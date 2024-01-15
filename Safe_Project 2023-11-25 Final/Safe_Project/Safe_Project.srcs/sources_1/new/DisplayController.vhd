library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DisplayController is
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
end DisplayController;

architecture Behavioral of DisplayController is
signal clkCount : natural range 0 to 1000000;
--signal passTest : std_logic_vector(15 downto 0) := "0001001000110100";
signal disp_val : std_logic_vector(3 downto 0);
signal message_flag : std_logic := '0';
signal display_buffer : std_logic_vector(15 downto 0);
signal message_buffer : std_logic_vector(3 downto 0);
signal digits_to_disp_buffer : STD_LOGIC_VECTOR (2 downto 0);

begin
process(clk)
begin 
   if rising_edge(clk) then
       clkCount <= clkCount + 1;
       message_buffer <= disp_messages;
       digits_to_disp_buffer <= digits_to_display;
       if message_buffer = "0000" then
           display_buffer <= pass_input;
           message_flag <= '0';
           case digits_to_disp_buffer is
                when "000" =>
                   if clkCount < 250000 then
                       disp_val <= "1111";
                       anode <="1110";
                     
                       elsif clkCount >= 250000 and clkCount < 500000 then
                       disp_val <= "1111";
                       anode <="1101";
                      
                       elsif clkCount >= 500000 and clkCount < 750000 then
                       disp_val <= "1111";
                       anode <="1011";
                       
                       else
                       disp_val <= "1111";
                       anode <="0111";
                  
                   end if;
                   
                when "001" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= "1111";
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= "1111";
                        anode <="1011";
                        
                        else
                        disp_val <= "1111";
                        anode <="0111";
                    
                    end if;
                when "010" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= display_buffer(7 downto 4);
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= "1111";
                        anode <="1011";
                        
                        else
                        disp_val <= "1111";
                        anode <="0111";
                    
                    end if;
                when "011" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= display_buffer(7 downto 4);
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= display_buffer(11 downto 8);
                        anode <="1011";
                        
                        else
                        disp_val <= "1111";
                        anode <="0111";
                    
                    end if;
                when "100" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= display_buffer(7 downto 4);
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= display_buffer(11 downto 8);
                        anode <="1011";
                        
                        else
                        disp_val <= display_buffer(15 downto 12);
                        anode <="0111";
                    
                    end if;
                when others =>
                    if clkCount < 250000 then
                        disp_val <= "1010";
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= "1010";
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= "1110";
                        anode <="1011";
                        
                        else
                        anode <="1111";
                      
                    end if;
            end case;
            if clkCount = 1000000 then
                clkCount <= 0;
            end if;
        else
            message_flag <= '1';
            case message_buffer is
                when "0001" => --Error message 1: Err
                    display_buffer <= "1111111010101010";
                    digits_to_disp_buffer <= "011";
                when "0010" => --Error message 2: OPEN
                    display_buffer <= "0000101111101101";
                    digits_to_disp_buffer <= "100";
                when "0011" => --Error message 3: LOC
                    display_buffer <= "1111100100001100";
                    digits_to_disp_buffer <= "011";
                when others =>
                    display_buffer <= "1111111010101010";
                    digits_to_disp_buffer <= "011";
            end case;
            --message_buffer <= "0000";
            --message_flag <= '0';
            case digits_to_disp_buffer is
                when "000" =>
                   if clkCount < 250000 then
                       disp_val <= "1111";
                       anode <="1110";
                     
                       elsif clkCount >= 250000 and clkCount < 500000 then
                       disp_val <= "1111";
                       anode <="1101";
                      
                       elsif clkCount >= 500000 and clkCount < 750000 then
                       disp_val <= "1111";
                       anode <="1011";
                       
                       else
                       disp_val <= "1111";
                       anode <="0111";
                  
                   end if;
                   
                when "001" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= "0001";
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= "0001";
                        anode <="1011";
                        
                        else
                        disp_val <= "0001";
                        anode <="0111";
                    
                    end if;
                when "010" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= display_buffer(7 downto 4);
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= "0001";
                        anode <="1011";
                        
                        else
                        disp_val <= "0001";
                        anode <="0111";
                    
                    end if;
                when "011" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= display_buffer(7 downto 4);
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= display_buffer(11 downto 8);
                        anode <="1011";
                        
                        else
                        disp_val <= "0001";
                        anode <="0111";
                    
                    end if;
                when "100" =>
                    if clkCount < 250000 then
                        disp_val <= display_buffer(3 downto 0);
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= display_buffer(7 downto 4);
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= display_buffer(11 downto 8);
                        anode <="1011";
                        
                        else
                        disp_val <= display_buffer(15 downto 12);
                        anode <="0111";
                    
                    end if;
                when others =>
                    if clkCount < 250000 then
                        disp_val <= "1010";
                        anode <="1110";
                        
                        elsif clkCount >= 250000 and clkCount < 500000 then
                        disp_val <= "1010";
                        anode <="1101";
                        
                        elsif clkCount >= 500000 and clkCount < 750000 then
                        disp_val <= "1110";
                        anode <="1011";
                        
                        else
                        anode <="1111";
                      
                    end if;
            end case;
        end if;
    end if;
end process;
   
      with message_flag & disp_val select
      segOut <=  "1000000" when "00000", --0
                      --"Normal" characters to diplay
					  "1111001" when "00001", --1
					  "0100100" when "00010", --2
					  "0110000" when "00011", --3
					  "0011001" when "00100", --4
					  "0010010" when "00101", --5
					  "0000010" when "00110", --6
					  "1111000" when "00111", --7
					  "0000000" when "01000", --8
					  "0010000" when "01001", --9
					  "0001000" when "01010", --A
					  "0000011" when "01011", --B
					  "1000110" when "01100", --C
					  "0100001" when "01101", --D
					  "0000110" when "01110", --E
					  "0111111" when "01111", --F [NOW "-")
					  --Custom characters to display
					  "1000000" when "10000", --0
					  "1111111" when "10001", --diplay off
					  "1000111" when "11001", --L
					  "1001110" when "11010", --R
					  "0001100" when "11011", --P
					  "1000110" when "11100", --C
					  "1001000" when "11101", --N
					  "0000110" when "11110", --E
					  "0111111" when "11111", --F [NOW "-")
					  "0111111" when others;

end Behavioral;