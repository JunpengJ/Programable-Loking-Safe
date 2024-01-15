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
           test : out std_logic_vector(2 downto 0)
    );
end PasswordDetector;

-- Architecture
architecture Behavioral of PasswordDetector is
    constant access_code : std_logic_vector(3 downto 0) := "1010";  -- Specific code to enter change mode
    signal correct_passcode : std_logic_vector(15 downto 0) := "0100001100100001"; -- Initial correct passcode
    signal entered_passcode : std_logic_vector(15 downto 0); -- Initialize entered passcode as active low
    signal passcode_match : std_logic := '1';                        -- Flag to indicate if passcode is entered
    signal change_in_progress : std_logic;                      -- Flag to indicate passcode change in progress
    signal digits_entered : integer range 0 to 4;
    signal last_input : std_logic_vector(3 downto 0);

begin
    process(clock)
    begin
    if rising_edge(clock) then
        if entered_passcode = correct_passcode
        if (not (keypad_input = last_input)) then
            last_input <= keypad_input;
            digits_entered <= digits_entered + 1;
            if (digits_entered = 5) and not (entered_passcode = correct_passcode) then
                entered_passcode <= "0000000000000000";
                digits_entered <= 1;
            else
                entered_passcode <= entered_passcode(11 downto 0) & keypad_input;
            end if;
            if entered_passcode = correct_passcode then
                passcode_match <= '1';
                passcode_valid <= passcode_match;
                --entered_passcode <= "0000000000000000";
            else
                passcode_match <= '0';
            end if;
        end if;
    end if;
    end process;
    
    passcode_valid <= passcode_match;
    
    with digits_entered select
        test <= "001" when 0,
                "010" when 1,
                "011" when 2,
                "100" when 3,
                "101" when others;
    
    
--    process
--    begin
--    passcode_match <= '1';
--    passcode_valid <= passcode_match;
--    end process;
    
--    process(clk, rst)
--    begin
--        if rst = '0' then
--            -- Reset state
--            entered_passcode <= "1111";
--            passcode_entered <= false;
--            passcode_valid <= '1';
--            change_mode <= '0';
--            change_in_progress <= false;

--        elsif rising_edge(clk) then
--            -- Check for keypad input when passcode is not fully entered
--            if not passcode_entered then
--                if keypad_input /= "1111" then
--                    entered_passcode <= not keypad_input; -- Invert active low input to active high
--                end if;

--                -- Check if 4-digit passcode is entered
--                if entered_passcode /= "1111" and entered_passcode /= "0000" then
--                    passcode_entered <= true;
--                end if;

--            -- Check for passcode validation
--            else
--                if entered_passcode = access_code then
--                    change_mode <= '1';  -- Enable change mode if the access code is entered
--                end if;

--                if change_mode = '0' then
--                    if entered_passcode = correct_passcode then
--                        passcode_valid <= '0';
--                    else
--                        passcode_valid <= '1';
--                    end if;
--                else
--                    change_in_progress <= true;
--                    correct_passcode <= not new_passcode; -- Invert active low input to active high
--                end if;
--            end if;
--        end if;
--    end process;
end Behavioral;