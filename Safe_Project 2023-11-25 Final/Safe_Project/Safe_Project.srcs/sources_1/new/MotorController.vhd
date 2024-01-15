----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2023 03:26:47 PM
-- Design Name: 
-- Module Name: MotorController - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MotorController is
    Port(
        IsPasscodeValid : in std_logic;
        DoorState : in std_logic;
        Clk : in std_logic;
        reset : in std_logic;
--        MotorOut : out std_logic_vector(1 downto 0); --Motor States 00 is Closed, 01 is Closing, 10 is Opening, 11 is Open
        Motor_Output : out std_logic;
        test : out std_logic_vector(3 downto 0)
        );
end MotorController;

architecture Behavioral of MotorController is
    type motor_state is (Closed, Closing, Opening, Opened);
    signal current_state, next_state: motor_state := Closed;
    signal timer: integer range 0 to 200000000 := 0;
    
    signal direction_input : std_logic; -- Input for servo direction control

    -- Servo control constants
    constant CLOCK_FREQ : natural := 10000000; -- Clock frequency in Hz
    constant SERVO_FREQ : natural := 50;        -- Servo PWM frequency in Hz
    constant PERIOD     : natural := CLOCK_FREQ / SERVO_FREQ; -- Period of PWM signal
    
    -- Constants for servo control
    constant MIN_PULSE_WIDTH : natural := 1000; -- Minimum pulse width in microseconds
    constant MAX_PULSE_WIDTH : natural := 2000; -- Maximum pulse width in microseconds
    
    signal pwm_counter : natural range 0 to 2000000 := 0;
    signal servo_signal : std_logic := '0'; -- Signal to control servo motor
    
    signal testsig : std_logic_vector(3 downto 0) := "0000";

begin

test <= testsig;

    process(Clk, reset)
    begin
        if rising_edge(Clk) then
            if reset = '1' then
               current_state <= Closed; --Reset to Closed
               next_state <= Closed;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;
    
    -- Servo control process
    process(Clk)
    begin
        if rising_edge(Clk) then
            -- Increment PWM counter
            pwm_counter <= pwm_counter + 1;
            -- Check for direction input to decide the duty cycle
            if current_state = Opening or current_state = Closing then
                if pwm_counter > 2000000 then
                    pwm_counter <= 0;
                else NULL;
                end if;
                    case current_state is
                        when Opening =>
                            direction_input <= '1';
    --                        testsig(0) <= '1';
                        when others =>
                            direction_input <= '0';
                    end case;
                    if direction_input = '1' then -- Clockwise
                        if pwm_counter < 129000 then
                            servo_signal <= '1';
                        else
                            servo_signal <= '0';
                        end if;
                    else -- Counterclockwise
                        if pwm_counter < 171000 then
                            servo_signal <= '1';
                        else
                            servo_signal <= '0';
                        end if;
                    end if;
            else
                   servo_signal <= '0'; -- Keep servo off when not opening or closing
            end if;
        end if;
    end process;  
    
    -- Output the servo signal to the motor
    Motor_Output <= servo_signal;    
    
    process(current_state, IsPasscodeValid, Clk)
    begin
        if rising_edge(Clk) then
            timer <= timer + 1;
            case current_state is
                when Closed =>
                    if IsPasscodeValid = '1' then
                        next_state <= Opening;
                        timer <= 0;
--                        testsig(3) <= '1';
                    else NULL;
                    end if;
                    
                when Closing =>
                    if timer < 200000000 then
                         NULL;
                    else
                        next_state <= Closed;
                    end if;
                
                when Opening =>
                    if timer < 200000000 then
                        NULL;
                    else
                        next_state <= Opened;
                    end if;
                
                when Opened =>
                    if IsPasscodeValid = '1' then
                        next_state <= Opened;
                        timer <= 0;
                    else
                        next_state <= Closing;
                        timer <= 0;
                    end if;
               
                when others =>
                    next_state <= Closed; --Default to closed state
            end case;    
        end if;
    end process;
    
    with current_state select
        testsig <= "0001" when Closed,
                    "0010" when Closing,
                    "0100" when Opening,
                    "1000" when Opened;
end Behavioral;
