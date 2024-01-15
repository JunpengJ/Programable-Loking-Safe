library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PmodKYPD is
    Port ( 
			  clk : in  STD_LOGIC;
			  JB : inout  STD_LOGIC_VECTOR (7 downto 0); -- PmodKYPD is designed to be connected to JB
           an : out  STD_LOGIC_VECTOR (3 downto 0);   -- Controls which position of the seven segment display to display
           seg : out  STD_LOGIC_VECTOR (6 downto 0); -- digit to display on the seven segment display 
           valid_pass : inout std_logic;
           keypresses : inout  STD_LOGIC_VECTOR (2 downto 0);
           servo_pin : out std_logic;
           servotesting : out std_logic_vector(3 downto 0);
           CompartmentIn: in STD_LOGIC;
           CompartmentOut: out STD_LOGIC
           );
end PmodKYPD;

architecture Behavioral of PmodKYPD is

component Decoder is
	Port (
			 clk : in  STD_LOGIC;
          Row : in  STD_LOGIC_VECTOR (3 downto 0);
			 Col : out  STD_LOGIC_VECTOR (3 downto 0);
          DecodeOut : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

component DisplayController is
	Port (
			  --output from the Decoder
			  DispVal : in  STD_LOGIC_VECTOR (3 downto 0);
			  digits_to_display : in STD_LOGIC_VECTOR (2 downto 0);
			  --controls the display digits
			  anode: out std_logic_vector(3 downto 0);
			  --controls which digit to display
              segOut : out  STD_LOGIC_VECTOR (6 downto 0); 
              clk : in std_logic;
              pass_input : in std_logic_vector(15 downto 0);
              disp_messages : in std_logic_vector(3 downto 0)
              );
	end component;
	
component MotorController is
    Port(
        IsPasscodeValid : in std_logic;
        DoorState : in std_logic;
        Clk : in std_logic;
        reset : in std_logic;
--        MotorOut : out std_logic_vector(1 downto 0); --Motor States 00 is Closed, 01 is Closing, 10 is Opening, 11 is Open
        Motor_Output : out std_logic;
        test : out std_logic_vector(3 downto 0)
        );
end component;
	
component PasswordDetector is
    Port ( 
           clock : in  std_logic;                               -- Clock input
--           rst : in  std_logic;                               -- Reset input
           keypad_input : in  std_logic_vector(3 downto 0);   -- Input from keypad for 4-digit code (Active Low)
           passcode_valid : out std_logic;                    -- Output indicating if the passcode is valid
--           change_mode : inout std_logic;                       -- Output indicating passcode change mode
--           new_passcode : in std_logic_vector(3 downto 0)     -- Input for a new passcode
           num_digits : out std_logic_vector(2 downto 0);
           pass_to_disp : out std_logic_vector(15 downto 0);
           pass_error_msg : out std_logic_vector(3 downto 0);
           compartmentInput: in  std_logic
    );
end component;

component CompartmentDetector is
    Port (CompartmentInput: in STD_LOGIC; 
          CompartmentOutput: out STD_LOGIC);
end component;

signal Decode: STD_LOGIC_VECTOR (3 downto 0);
signal entered_pass : std_logic_vector(15 downto 0);
signal disp_error_msg : STD_LOGIC_VECTOR (3 downto 0);
signal pass_valid : std_logic;
signal door_state_from_sensor : std_logic;
signal reset_motor : std_logic;
signal compInput: std_logic;

begin

    pass_valid <= valid_pass;
    CompartmentOut <= compInput;
	C0: Decoder port map (clk=>clk, Row =>JB(7 downto 4), Col=>JB(3 downto 0), DecodeOut=>Decode);
	C1: DisplayController port map (Decode, keypresses, an, seg , clk, entered_pass, disp_error_msg);
	C2: PasswordDetector port map (clk, Decode, pass_valid, keypresses, entered_pass, disp_error_msg,CompartmentIn);
	C3: MotorController port map (pass_valid, door_state_from_sensor, clk, reset_motor, servo_pin, servotesting);
    C4: CompartmentDetector port map (CompartmentIn, compInput);
end Behavioral;
