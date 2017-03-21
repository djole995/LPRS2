-------------------------------------------------------------------------------
--  Department of Computer Engineering and Communications
--  Author: LPRS2  <lprs2@rt-rk.com>
--
--  Module Name: top
--
--  Description:
--
--    Simple test for VGA control
--
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity top is
  generic (
    RES_TYPE             : natural := 1;
    TEXT_MEM_DATA_WIDTH  : natural := 6;
    GRAPH_MEM_DATA_WIDTH : natural := 32
    );
  port (
    clk_i          : in  std_logic;
    reset_n_i      : in  std_logic;
    -- vga
    vga_hsync_o    : out std_logic;
    vga_vsync_o    : out std_logic;
    blank_o        : out std_logic;
    pix_clock_o    : out std_logic;
    psave_o        : out std_logic;
    sync_o         : out std_logic;
    red_o          : out std_logic_vector(7 downto 0);
    green_o        : out std_logic_vector(7 downto 0);
    blue_o         : out std_logic_vector(7 downto 0)
   );
end top;

architecture rtl of top is

  constant RES_NUM : natural := 6;
  constant SH_REG_WIDTH : natural := 20;                  --Sirina brojaca koji kontrolise brzinu pomeranja teksta
  constant SH_REG_MAX_VALUE : natural := 256*256*16-1;   
  constant TEXT_BITS_NUMBER: natural := 2;                --Sirina brojaca koji indeksira tekst
  constant TEXT_SIZE : natural := 3;					--Duzina teksta

  type t_param_array is array (0 to RES_NUM-1) of natural;
  type text_array is array (0 to TEXT_SIZE-1) of natural;
  type t_state is (IDLE, RUNNING);
  
  
  
  constant H_RES_ARRAY           : t_param_array := ( 0 => 64, 1 => 640,  2 => 800,  3 => 1024,  4 => 1152,  5 => 1280,  others => 0 );
  constant V_RES_ARRAY           : t_param_array := ( 0 => 48, 1 => 480,  2 => 600,  3 => 768,   4 => 864,   5 => 1024,  others => 0 );
  constant MEM_ADDR_WIDTH_ARRAY  : t_param_array := ( 0 => 12, 1 => 14,   2 => 13,   3 => 14,    4 => 14,    5 => 15,    others => 0 );
  constant MEM_SIZE_ARRAY        : t_param_array := ( 0 => 48, 1 => 4800, 2 => 7500, 3 => 12576, 4 => 15552, 5 => 20480, others => 0 ); 
  
  constant H_RES          : natural := H_RES_ARRAY(RES_TYPE);
  constant V_RES          : natural := V_RES_ARRAY(RES_TYPE);
  constant MEM_ADDR_WIDTH : natural := MEM_ADDR_WIDTH_ARRAY(RES_TYPE);
  constant MEM_SIZE       : natural := MEM_SIZE_ARRAY(RES_TYPE);

  component vga_top is 
    generic (
      H_RES                : natural := 640;
      V_RES                : natural := 480;
      MEM_ADDR_WIDTH       : natural := 32;
      GRAPH_MEM_ADDR_WIDTH : natural := 32;
      TEXT_MEM_DATA_WIDTH  : natural := 32;
      GRAPH_MEM_DATA_WIDTH : natural := 32;
      RES_TYPE             : integer := 1;
      MEM_SIZE             : natural := 4800
      );
    port (
      clk_i               : in  std_logic;
      reset_n_i           : in  std_logic;
      --
      direct_mode_i       : in  std_logic; -- 0 - text and graphics interface mode, 1 - direct mode (direct force RGB component)
      dir_red_i           : in  std_logic_vector(7 downto 0);
      dir_green_i         : in  std_logic_vector(7 downto 0);
      dir_blue_i          : in  std_logic_vector(7 downto 0);
      dir_pixel_column_o  : out std_logic_vector(10 downto 0);
      dir_pixel_row_o     : out std_logic_vector(10 downto 0);
      -- mode interface
      display_mode_i      : in  std_logic_vector(1 downto 0);  -- 00 - text mode, 01 - graphics mode, 01 - text & graphics
      -- text mode interface
      text_addr_i         : in  std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
      text_data_i         : in  std_logic_vector(TEXT_MEM_DATA_WIDTH-1 downto 0);
      text_we_i           : in  std_logic;
      -- graphics mode interface
      graph_addr_i        : in  std_logic_vector(GRAPH_MEM_ADDR_WIDTH-1 downto 0);
      graph_data_i        : in  std_logic_vector(GRAPH_MEM_DATA_WIDTH-1 downto 0);
      graph_we_i          : in  std_logic;
      --
      font_size_i         : in  std_logic_vector(3 downto 0);
      show_frame_i        : in  std_logic;
      foreground_color_i  : in  std_logic_vector(23 downto 0);
      background_color_i  : in  std_logic_vector(23 downto 0);
      frame_color_i       : in  std_logic_vector(23 downto 0);
      -- vga
      vga_hsync_o         : out std_logic;
      vga_vsync_o         : out std_logic;
      blank_o             : out std_logic;
      pix_clock_o         : out std_logic;
      vga_rst_n_o         : out std_logic;
      psave_o             : out std_logic;
      sync_o              : out std_logic;
      red_o               : out std_logic_vector(7 downto 0);
      green_o             : out std_logic_vector(7 downto 0);
      blue_o              : out std_logic_vector(7 downto 0)
    );
  end component;
  
  component ODDR2
  generic(
   DDR_ALIGNMENT : string := "NONE";
   INIT          : bit    := '0';
   SRTYPE        : string := "SYNC"
   );
  port(
    Q           : out std_ulogic;
    C0          : in  std_ulogic;
    C1          : in  std_ulogic;
    CE          : in  std_ulogic := 'H';
    D0          : in  std_ulogic;
    D1          : in  std_ulogic;
    R           : in  std_ulogic := 'L';
    S           : in  std_ulogic := 'L'
  );
  end component;
  
 component reg is
	generic(
		WIDTH    : positive := 1;
		RST_INIT : integer := 0
	);
	port(
		i_clk  : in  std_logic;
		in_rst : in  std_logic;
		i_d    : in  std_logic_vector(WIDTH-1 downto 0);
		o_q    : out std_logic_vector(WIDTH-1 downto 0)
	);
end component reg;
  
  
  constant update_period     : std_logic_vector(31 downto 0) := conv_std_logic_vector(1, 32);
  
  constant GRAPH_MEM_ADDR_WIDTH : natural := MEM_ADDR_WIDTH + 6;-- graphics addres is scales with minumum char size 8*8 log2(64) = 6
  
  -- text
  signal message_lenght      : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
  signal graphics_lenght     : std_logic_vector(GRAPH_MEM_ADDR_WIDTH-1 downto 0);
  
  signal direct_mode         : std_logic;
  --
  signal font_size           : std_logic_vector(3 downto 0);
  signal show_frame          : std_logic;
  signal display_mode        : std_logic_vector(1 downto 0);  -- 01 - text mode, 10 - graphics mode, 11 - text & graphics
  signal foreground_color    : std_logic_vector(23 downto 0);
  signal background_color    : std_logic_vector(23 downto 0);
  signal frame_color         : std_logic_vector(23 downto 0);

  signal char_we             : std_logic;
  signal char_address        : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
  signal char_value          : std_logic_vector(5 downto 0);

  signal pixel_address       : std_logic_vector(GRAPH_MEM_ADDR_WIDTH-1 downto 0);
  signal pixel_value         : std_logic_vector(GRAPH_MEM_DATA_WIDTH-1 downto 0);
  signal pixel_we            : std_logic;

  signal pix_clock_s         : std_logic;
  signal vga_rst_n_s         : std_logic;
  signal pix_clock_n         : std_logic;
   
  signal dir_red             : std_logic_vector(7 downto 0);
  signal dir_green           : std_logic_vector(7 downto 0);
  signal dir_blue            : std_logic_vector(7 downto 0);
  signal dir_pixel_column    : std_logic_vector(10 downto 0);
  signal dir_pixel_row       : std_logic_vector(10 downto 0);
  
  signal mem_r : std_logic_vector(13 downto 0);                  --Pokazivac na trenutnu lokaciju u koju se vrsi upis
  signal char_cnt_r : std_logic_vector(TEXT_BITS_NUMBER-1 downto 0);              --registar koji indeksira elemente teksta
  signal char_cnt : std_logic_vector(TEXT_BITS_NUMBER-1 downto 0);					
  signal sh_cnt : std_logic_vector(SH_REG_WIDTH-1 downto 0);         --Brojac koji kada dostigne max vrednost prouzrokuje 
  signal sh_cnt_r : std_logic_vector(SH_REG_WIDTH-1 downto 0);        --pomeranje teksta
  signal print_sig : std_logic;												--Signalizacija kada sift brojac dostigne max vrednost
  signal run_s : std_logic_vector(0 downto 0);						--Odredjuje stanje u kom se sistem nalazi
  signal run_s_i : std_logic_vector(0 downto 0);					-- 0 : inicijalno punjenje text memorije razmacima  
																					-- 1 : ispis i pomeranje teksta po ekranu
																					
  constant input_text: text_array := ( 0 => 1, 1 => 2, 2 => 3);        --Tekst koji se ispisuje na ekranu
  
  
  constant QUAD_SIZE : natural := 50;
  constant QUAD_POSITION_X : natural := 50;
  constant QUAD_POSITION_Y : natural := 50;
  signal graph_mem_r : std_logic_vector(19 downto 0);
  
  signal pixel_colon_r : std_logic_vector(15 downto 0);
  signal pixel_colon : std_logic_vector(15 downto 0);
  signal pixel_row : std_logic_vector(15 downto 0); 
  signal pixel_row_r : std_logic_vector(15 downto 0);
  
  signal draw_r: std_logic_vector(0 downto 0);
  signal draw_i: std_logic_vector(0 downto 0);
  
  signal sh_graph_cnt : std_logic_vector(SH_REG_WIDTH-1 downto 0);         --Brojac koji kada dostigne max vrednost prouzrokuje 
  signal sh_graph_cnt_r : std_logic_vector(SH_REG_WIDTH-1 downto 0);

	

begin

  -- calculate message lenght from font size
  message_lenght <= conv_std_logic_vector(MEM_SIZE/64, MEM_ADDR_WIDTH)when (font_size = 3) else -- note: some resolution with font size (32, 64)  give non integer message lenght (like 480x640 on 64 pixel font size) 480/64= 7.5
                    conv_std_logic_vector(MEM_SIZE/16, MEM_ADDR_WIDTH)when (font_size = 2) else
                    conv_std_logic_vector(MEM_SIZE/4 , MEM_ADDR_WIDTH)when (font_size = 1) else
                    conv_std_logic_vector(MEM_SIZE   , MEM_ADDR_WIDTH);
  
  graphics_lenght <= conv_std_logic_vector(MEM_SIZE*8*8, GRAPH_MEM_ADDR_WIDTH);
  
  -- removed to inputs pin
  direct_mode <= '0';
  display_mode     <= "10";  -- 01 - text mode, 10 - graphics mode, 11 - text & graphics
  
  font_size        <= x"1";
  show_frame       <= '1';
  foreground_color <= x"00FF00";
  background_color <= x"000000";
  frame_color      <= x"FF0000";

  mem_reg : reg 
	GENERIC MAP (
	   WIDTH => 14,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => char_address,
		o_q => mem_r
	);

	char_reg : reg 
	GENERIC MAP (
	   WIDTH => TEXT_BITS_NUMBER,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => char_cnt,
		o_q => char_cnt_r
	);
	
	sh_reg : reg 
	GENERIC MAP (
	   WIDTH => SH_REG_WIDTH,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => sh_cnt,
		o_q => sh_cnt_r
	);
	
	run_reg : reg 
	GENERIC MAP (
	   WIDTH => 1,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => run_s_i,
		o_q => run_s
	);
	
	graphics_reg : reg 
	GENERIC MAP (
	   WIDTH => 20,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => pixel_address,
		o_q => graph_mem_r
	);
	
	colon_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => pixel_colon,
		o_q => pixel_colon_r
	);
	
	row_reg : reg 
	GENERIC MAP (
	   WIDTH => 16,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => pixel_row,
		o_q => pixel_row_r
	);
	
	sh_graph_reg : reg 
	GENERIC MAP (
	   WIDTH => SH_REG_WIDTH,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => sh_graph_cnt,
		o_q => sh_graph_cnt_r
	);
	
	draw_reg : reg 
	GENERIC MAP (
	   WIDTH => 1,
		RST_INIT => 0
	)		
	PORT MAP (
	   i_clk => pix_clock_s,
		in_rst => vga_rst_n_s,
		i_d => draw_i,
		o_q => draw_r
	);

  clk5m_inst : ODDR2
  generic map(
    DDR_ALIGNMENT => "NONE",  -- Sets output alignment to "NONE","C0", "C1" 
    INIT => '0',              -- Sets initial state of the Q output to '0' or '1'
    SRTYPE => "SYNC"          -- Specifies "SYNC" or "ASYNC" set/reset
  )
  port map (
    Q  => pix_clock_o,       -- 1-bit output data
    C0 => pix_clock_s,       -- 1-bit clock input
    C1 => pix_clock_n,       -- 1-bit clock input
    CE => '1',               -- 1-bit clock enable input
    D0 => '1',               -- 1-bit data input (associated with C0)
    D1 => '0',               -- 1-bit data input (associated with C1)
    R  => '0',               -- 1-bit reset input
    S  => '0'                -- 1-bit set input
  );
  pix_clock_n <= not(pix_clock_s);

  -- component instantiation
  vga_top_i: vga_top
  generic map(
    RES_TYPE             => RES_TYPE,
    H_RES                => H_RES,
    V_RES                => V_RES,
    MEM_ADDR_WIDTH       => MEM_ADDR_WIDTH,
    GRAPH_MEM_ADDR_WIDTH => GRAPH_MEM_ADDR_WIDTH,
    TEXT_MEM_DATA_WIDTH  => TEXT_MEM_DATA_WIDTH,
    GRAPH_MEM_DATA_WIDTH => GRAPH_MEM_DATA_WIDTH,
    MEM_SIZE             => MEM_SIZE
  )
  port map(
    clk_i              => clk_i,
    reset_n_i          => reset_n_i,
    --
    direct_mode_i      => direct_mode,
    dir_red_i          => dir_red,
    dir_green_i        => dir_green,
    dir_blue_i         => dir_blue,
    dir_pixel_column_o => dir_pixel_column,
    dir_pixel_row_o    => dir_pixel_row,
    -- cfg
    display_mode_i     => display_mode,  -- 01 - text mode, 10 - graphics mode, 11 - text & graphics
    -- text mode interface
    text_addr_i        => char_address,
    text_data_i        => char_value,
    text_we_i          => char_we,
    -- graphics mode interface
    graph_addr_i       => pixel_address,
    graph_data_i       => pixel_value,
    graph_we_i         => pixel_we,
    -- cfg
    font_size_i        => font_size,
    show_frame_i       => show_frame,
    foreground_color_i => foreground_color,
    background_color_i => background_color,
    frame_color_i      => frame_color,
    -- vga
    vga_hsync_o        => vga_hsync_o,
    vga_vsync_o        => vga_vsync_o,
    blank_o            => blank_o,
    pix_clock_o        => pix_clock_s,
    vga_rst_n_o        => vga_rst_n_s,
    psave_o            => psave_o,
    sync_o             => sync_o,
    red_o              => red_o,
    green_o            => green_o,
    blue_o             => blue_o     
  );
  
  -- na osnovu signala iz vga_top modula dir_pixel_column i dir_pixel_row realizovati logiku koja genereise
  --dir_red
  --dir_green
  --dir_blue
  process(dir_pixel_column) begin
	if(dir_pixel_column < H_RES/8) then
		dir_green <= x"FF";
		dir_red <= x"FF";
		dir_blue <= x"FF";
	elsif(dir_pixel_column >= H_RES/8 and dir_pixel_column < 2*H_RES/8) then
		dir_green <= x"AE";
		dir_red <= x"F5";
		dir_blue <= x"0A";
	elsif(dir_pixel_column >= 2*H_RES/8 and dir_pixel_column < 3*H_RES/8) then
		dir_green <= x"FC";
		dir_red <= x"03";
		dir_blue <= x"EC";
	elsif(dir_pixel_column >= 3*H_RES/8 and dir_pixel_column < 4*H_RES/8) then
		dir_green <= x"FF";
		dir_red <= x"00";
		dir_blue <= x"00";
	elsif(dir_pixel_column >= 4*H_RES/8 and dir_pixel_column < 5*H_RES/8) then
		dir_green <= x"00";
		dir_red <= x"FF";
		dir_blue <= x"FF";
	elsif(dir_pixel_column >= 5*H_RES/8 and dir_pixel_column < 6*H_RES/8) then
		dir_green <= x"00";
		dir_red <= x"FF";
		dir_blue <= x"00";
	elsif(dir_pixel_column >= 6*H_RES/8 and dir_pixel_column < 7*H_RES/8) then
		dir_green <= x"00";
		dir_red <= x"00";
		dir_blue <= x"FF";
	else
		dir_green <= x"00";
		dir_red <= x"00";
		dir_blue <= x"00";
	end if;
end process;
	
 
  -- koristeci signale realizovati logiku koja pise po TXT_MEM
  --char_address
  --char_value
  --char_we

  
		  char_we <= '0';
		  
		  run_s_i <= "1" when mem_r = 40*30+3
					else run_s;
		  
		 process(mem_r, run_s, sh_cnt_r, print_sig) begin
			if(run_s = "0" and mem_r < 40*30+3) then
				char_address <= mem_r+1;
			elsif(run_s = "0" and mem_r = 40*30+3) then
				char_address <= (others => '0');
			else
				if(mem_r = 40*30+2) then
					 char_address <= (others => '0');
				elsif(sh_cnt_r = SH_REG_MAX_VALUE-4) then
				    char_address <= mem_r-2;
				elsif(print_sig = '1') then
					 char_address <= mem_r+1;
				else
					 char_address <= mem_r;
				end if;
			end if;
		end process;
					
							
			sh_cnt <= sh_cnt_r+1; 
							
			char_cnt <= char_cnt_r+1 when print_sig = '1'
							else char_cnt_r;
			
			print_sig <= '1' when sh_cnt_r < SH_REG_MAX_VALUE and sh_cnt_r >= SH_REG_MAX_VALUE-4 
							else '0';
							
			
			process(char_cnt_r, sh_cnt_r, run_s) begin
				if(sh_cnt_r = SH_REG_MAX_VALUE-4 or run_s = "0") then
					 char_value <= conv_std_logic_vector(32,6);
				else		
				  case(char_cnt_r) is
					 when "00" => char_value <= conv_std_logic_vector(input_text(2), 6);
					 when "01" => char_value <= conv_std_logic_vector(input_text(0), 6);
					 when others => char_value <= conv_std_logic_vector(input_text(1), 6);
				  end case;
				end if;  
			end process;
	
  
  
  
  -- koristeci signale realizovati logiku koja pise po GRAPH_MEM
  --pixel_address
  --pixel_value
  --pixel_we
 pixel_we <= '1';
pixel_address <= (others => '0') when graph_mem_r = 9600
					else graph_mem_r+1;

--kvadrat 80*80	
draw_i(0) <= '1' when pixel_address = pixel_row_r
			else  '0'  when pixel_address = pixel_row_r+1604
			else  draw_r(0);

pixel_colon <= (others => '0') when pixel_colon_r = 5
				else pixel_colon_r+1 when draw_r(0) = '1'
				else pixel_colon_r;
				
sh_graph_cnt <= sh_graph_cnt_r+1;
					
pixel_row <= conv_std_logic_vector(4800, 16) when pixel_row_r = 4816 and sh_graph_cnt = SH_REG_MAX_VALUE
				else pixel_row_r+1 when sh_graph_cnt = SH_REG_MAX_VALUE
				else pixel_row_r;

process(draw_r, pixel_colon_r) begin
	if(draw_r(0) = '1' and pixel_colon_r > 0) then
		pixel_value <= (others => '1');
	else
		pixel_value <= (others => '0');
	end if;
end process;  
  
end rtl;