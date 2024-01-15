----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2023 05:08:45 PM
-- Design Name: 
-- Module Name: PasswordDetector - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PasswordDetector is
    Port ( 
           clock : in  std_logic;                               -- Clock input
           keypad_input : in  std_logic_vector(3 downto 0);   -- Input from keypad for 4-digit code (Active Low)
           passcode_valid : out std_logic;                    -- Output indicating if the passcode is valid
           num_digits : out std_logic_vector(2 downto 0);
           pass_to_disp : out std_logic_vector(15 downto 0);
           pass_error_msg : out std_logic_vector(3 downto 0);
           compartmentInput: in  std_logic
          );
end PasswordDetector;

-- Architecture
architecture Behavioral of PasswordDetector is
    constant access_code : std_logic_vector(3 downto 0) := "1010";  -- Specific code to enter change mode
    signal correct_passcode : std_logic_vector(15 downto 0) := "0100001100100001"; -- Initial correct passcode
    signal backup_passcode : std_logic_vector(15 downto 0) := "0100001100100001"; -- Initial correct passcode
    signal entered_passcode : std_logic_vector(15 downto 0); -- Initialize entered passcode as active low
    signal passcode_match : std_logic := '0';                        -- Flag to indicate if passcode is entered
    signal change_in_progress : std_logic;                      -- Flag to indicate passcode change in progress
    signal digits_entered : integer range 0 to 4 := 0;
    signal last_input : std_logic_vector(3 downto 0) := "0000";
    signal change_pass_mode : std_logic := '0';
    signal lock_count: natural range 0 to 1000000000;
    signal auto_lock: natural range 0 to 30;
--    signal CompartmentOutput: std_logic;

begin
    process(clock)
    begin
    if rising_edge(clock) then
        if passcode_match = '1' then
            case compartmentInput is
                when '1' =>
                    lock_count <= lock_count + 1;
                    if lock_count = 100000000 then 
                        auto_lock <= auto_lock + 1;
                        lock_count <= 0;
                    end if;
                    if auto_lock = 30 then 
                        passcode_match <= '0';
                        auto_lock <= 0;
                        pass_error_msg <= "0011";
                    end if; 
                when others => null;
            end case;
       end if;
        case change_pass_mode is
            when '0' =>
                if (not (keypad_input = last_input)) then
                    last_input <= keypad_input;
                    case digits_entered is
                        when 4 =>
                            case keypad_input is
                                when "1010" =>
                                    if entered_passcode = correct_passcode or entered_passcode = backup_passcode then
                                        passcode_match <= '1';
                                        pass_error_msg <= "0010";
                                    else
                                        passcode_match <= '0';
                                        pass_error_msg <= "0001";
                                    end if;
                                    digits_entered <= 0;
                                --when "C" for change password -> logic for changing password
                                when "1100" =>
                                    if entered_passcode = correct_passcode or entered_passcode = backup_passcode then
                                        change_pass_mode <= '1';
                                        passcode_match <= '1';
                                        pass_error_msg <= "0010";
                                    else
                                        pass_error_msg <= "0001";
                                    end if;
                                    digits_entered <= 0;
                                when others => 
                                    pass_error_msg <= "0000";
                            end case;
                            
                        when others =>
                            digits_entered <= digits_entered + 1;
                            entered_passcode <= entered_passcode(11 downto 0) & keypad_input;
                            passcode_match <= '0';
                            pass_error_msg <= "0000";
                    end case;
                end if;
                
            when '1' =>
                if (not (keypad_input = last_input)) then
                        last_input <= keypad_input;
                        case digits_entered is
                            when 4 =>
                                case keypad_input is
                                    when "1010" =>
                                        correct_passcode <= entered_passcode;
                                        passcode_match <= '0';
                                        digits_entered <= 0;
                                        change_pass_mode <= '0';
                                    when others =>
                                        pass_error_msg <= "0000";
                                end case;
                                
                            when others =>
                                digits_entered <= digits_entered + 1;
                                entered_passcode <= entered_passcode(11 downto 0) & keypad_input;
                                passcode_match <= '1';
                                pass_error_msg <= "0000";
                        end case;
                    end if;
            
            when others =>
                pass_error_msg <= "0000";
        end case;
    end if;
      
    end process;
    
    passcode_valid <= passcode_match;
    pass_to_disp <= entered_passcode;
    
    with digits_entered select
        num_digits <= "000" when 0,
                "001" when 1,
                "010" when 2,
                "011" when 3,
                "100" when 4,
                "101" when 5,
                "110" when 6,
                "111" when others;
end Behavioral;