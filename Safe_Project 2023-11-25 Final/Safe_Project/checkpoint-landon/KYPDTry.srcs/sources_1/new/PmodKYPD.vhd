library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PmodKYPD is
    Port ( 
			  clk : in  STD_LOGIC;
			  JB : inout  STD_LOGIC_VECTOR (7 downto 0); -- PmodKYPD is designed to be connected to JA
           an : out  STD_LOGIC_VECTOR (3 downto 0);   -- Controls which position of the seven segment display to display
           seg : out  STD_LOGIC_VECTOR (6 downto 0); -- digit to display on the seven segment display 
           valid_pass : inout std_logic;
           keypresses : out  STD_LOGIC_VECTOR (2 downto 0);
           MotorClockwise : out std_logic;
           MotorCounterclockwise : out std_logic);
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
			  DispVal : in  STD_LOGIC_VECTOR (3 downto 0);
           anode: out std_logic_vector(3 downto 0);
           segOut : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;
	
component MotorController is
    Port(
        IsPasscodeValid : in std_logic;
        MotorOpen : out std_logic;
        MotorClose : out std_logic);
end component;
	
component PasswordDetector is
    Port ( 
           clock : in  std_logic;                               -- Clock input
--           rst : in  std_logic;                               -- Reset input
           keypad_input : in  std_logic_vector(3 downto 0);   -- Input from keypad for 4-digit code (Active Low)
           passcode_valid : out std_logic;                    -- Output indicating if the passcode is valid
--           change_mode : inout std_logic;                       -- Output indicating passcode change mode
--           new_passcode : in std_logic_vector(3 downto 0)     -- Input for a new passcode
           test : out std_logic_vector(2 downto 0)
    );
end component;

signal Decode: STD_LOGIC_VECTOR (3 downto 0);
begin

	C0: Decoder port map (clk=>clk, Row =>JB(7 downto 4), Col=>JB(3 downto 0), DecodeOut=>Decode);
	C1: DisplayController port map (DispVal=>Decode, anode=>an, segOut=>seg );
	C2: PasswordDetector port map (clk, Decode, valid_pass, keypresses);
    C3: MotorController port map (valid_pass, MotorClockwise, MotorCounterclockwise);

end Behavioral;
