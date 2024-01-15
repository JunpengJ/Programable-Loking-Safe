-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Nov 19 19:24:11 2023
-- Host        : om1792-15 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {F:/CENG
--               3010/Safe_Project/Safe_Project.sim/sim_1/synth/func/xsim/PmodKYPD_func_synth.vhd}
-- Design      : PmodKYPD
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Decoder is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    seg_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \Col_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    JB_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Decoder;

architecture STRUCTURE of Decoder is
  signal \Col[0]_i_1_n_0\ : STD_LOGIC;
  signal \Col[1]_i_1_n_0\ : STD_LOGIC;
  signal \Col[2]_i_1_n_0\ : STD_LOGIC;
  signal \Col[3]_i_10_n_0\ : STD_LOGIC;
  signal \Col[3]_i_11_n_0\ : STD_LOGIC;
  signal \Col[3]_i_12_n_0\ : STD_LOGIC;
  signal \Col[3]_i_1_n_0\ : STD_LOGIC;
  signal \Col[3]_i_2_n_0\ : STD_LOGIC;
  signal \Col[3]_i_3_n_0\ : STD_LOGIC;
  signal \Col[3]_i_4_n_0\ : STD_LOGIC;
  signal \Col[3]_i_5_n_0\ : STD_LOGIC;
  signal \Col[3]_i_6_n_0\ : STD_LOGIC;
  signal \Col[3]_i_7_n_0\ : STD_LOGIC;
  signal \Col[3]_i_8_n_0\ : STD_LOGIC;
  signal \Col[3]_i_9_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_2_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_3_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_4_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_5_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_6_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_7_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_8_n_0\ : STD_LOGIC;
  signal \DecodeOut[0]_i_9_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_10_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_2_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_3_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_4_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_5_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_6_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_7_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_8_n_0\ : STD_LOGIC;
  signal \DecodeOut[1]_i_9_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_10_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_11_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_12_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_1_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_2_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_3_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_4_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_5_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_6_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_7_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_8_n_0\ : STD_LOGIC;
  signal \DecodeOut[2]_i_9_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_10_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_11_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_2_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_3_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_4_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_5_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_6_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_7_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_8_n_0\ : STD_LOGIC;
  signal \DecodeOut[3]_i_9_n_0\ : STD_LOGIC;
  signal \last_input[3]_i_2_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sclk : STD_LOGIC;
  signal \sclk[0]_i_3_n_0\ : STD_LOGIC;
  signal \sclk[0]_i_4_n_0\ : STD_LOGIC;
  signal sclk_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \sclk_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sclk_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sclk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sclk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sclk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sclk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_sclk_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Col[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Col[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Col[3]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Col[3]_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Col[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Col[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Col[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Col[3]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Col[3]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DecodeOut[0]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DecodeOut[0]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DecodeOut[0]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DecodeOut[1]_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DecodeOut[1]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DecodeOut[1]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DecodeOut[1]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DecodeOut[1]_i_9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DecodeOut[2]_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DecodeOut[2]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DecodeOut[2]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \DecodeOut[2]_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DecodeOut[3]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \DecodeOut[3]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DecodeOut[3]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DecodeOut[3]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sclk[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg_OBUF[0]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg_OBUF[1]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg_OBUF[2]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg_OBUF[3]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg_OBUF[5]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg_OBUF[6]_inst_i_1\ : label is "soft_lutpair15";
begin
  p_0_in(3 downto 0) <= \^p_0_in\(3 downto 0);
\Col[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \Col[3]_i_4_n_0\,
      I1 => \Col[3]_i_6_n_0\,
      I2 => \Col[3]_i_2_n_0\,
      O => \Col[0]_i_1_n_0\
    );
\Col[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Col[3]_i_6_n_0\,
      O => \Col[1]_i_1_n_0\
    );
\Col[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Col[3]_i_4_n_0\,
      O => \Col[2]_i_1_n_0\
    );
\Col[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \Col[3]_i_3_n_0\,
      I1 => \Col[3]_i_4_n_0\,
      I2 => \Col[3]_i_5_n_0\,
      I3 => \Col[3]_i_6_n_0\,
      I4 => \Col[3]_i_2_n_0\,
      O => \Col[3]_i_1_n_0\
    );
\Col[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => sclk_reg(9),
      I1 => sclk_reg(15),
      I2 => sclk_reg(5),
      I3 => sclk_reg(17),
      I4 => sclk_reg(11),
      O => \Col[3]_i_10_n_0\
    );
\Col[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => sclk_reg(11),
      I1 => sclk_reg(17),
      I2 => sclk_reg(5),
      I3 => sclk_reg(15),
      O => \Col[3]_i_11_n_0\
    );
\Col[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => sclk_reg(12),
      I1 => sclk_reg(18),
      I2 => sclk_reg(10),
      I3 => sclk_reg(16),
      O => \Col[3]_i_12_n_0\
    );
\Col[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Col[3]_i_7_n_0\,
      I1 => \Col[3]_i_8_n_0\,
      I2 => sclk_reg(8),
      I3 => sclk_reg(6),
      O => \Col[3]_i_2_n_0\
    );
\Col[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sclk_reg(3),
      I1 => \Col[3]_i_9_n_0\,
      I2 => sclk_reg(1),
      I3 => sclk_reg(4),
      I4 => sclk_reg(13),
      O => \Col[3]_i_3_n_0\
    );
\Col[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \Col[3]_i_7_n_0\,
      I1 => \Col[3]_i_10_n_0\,
      I2 => sclk_reg(7),
      I3 => sclk_reg(6),
      I4 => sclk_reg(8),
      O => \Col[3]_i_4_n_0\
    );
\Col[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \Col[3]_i_11_n_0\,
      I1 => sclk_reg(6),
      I2 => sclk_reg(8),
      I3 => sclk_reg(7),
      I4 => sclk_reg(9),
      I5 => \Col[3]_i_12_n_0\,
      O => \Col[3]_i_5_n_0\
    );
\Col[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \Col[3]_i_12_n_0\,
      I1 => sclk_reg(8),
      I2 => sclk_reg(6),
      I3 => \Col[3]_i_8_n_0\,
      O => \Col[3]_i_6_n_0\
    );
\Col[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sclk_reg(12),
      I1 => sclk_reg(18),
      I2 => sclk_reg(10),
      I3 => sclk_reg(16),
      O => \Col[3]_i_7_n_0\
    );
\Col[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => sclk_reg(7),
      I1 => sclk_reg(9),
      I2 => sclk_reg(5),
      I3 => sclk_reg(11),
      I4 => sclk_reg(15),
      I5 => sclk_reg(17),
      O => \Col[3]_i_8_n_0\
    );
\Col[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sclk_reg(0),
      I1 => sclk_reg(19),
      I2 => sclk_reg(2),
      I3 => sclk_reg(14),
      O => \Col[3]_i_9_n_0\
    );
\Col_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Col[3]_i_1_n_0\,
      D => \Col[0]_i_1_n_0\,
      Q => \Col_reg[3]_0\(0),
      R => '0'
    );
\Col_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Col[3]_i_1_n_0\,
      D => \Col[1]_i_1_n_0\,
      Q => \Col_reg[3]_0\(1),
      R => '0'
    );
\Col_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Col[3]_i_1_n_0\,
      D => \Col[2]_i_1_n_0\,
      Q => \Col_reg[3]_0\(2),
      R => '0'
    );
\Col_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Col[3]_i_1_n_0\,
      D => \Col[3]_i_2_n_0\,
      Q => \Col_reg[3]_0\(3),
      R => '0'
    );
\DecodeOut[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFE02"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \DecodeOut[2]_i_2_n_0\,
      I2 => \DecodeOut[2]_i_3_n_0\,
      I3 => \DecodeOut[0]_i_2_n_0\,
      I4 => \DecodeOut[0]_i_3_n_0\,
      I5 => \DecodeOut[2]_i_6_n_0\,
      O => \DecodeOut[0]_i_1_n_0\
    );
\DecodeOut[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FAF0F2F0FFF0F2"
    )
        port map (
      I0 => \DecodeOut[1]_i_7_n_0\,
      I1 => \Col[3]_i_2_n_0\,
      I2 => \DecodeOut[0]_i_4_n_0\,
      I3 => \sclk[0]_i_3_n_0\,
      I4 => \Col[3]_i_6_n_0\,
      I5 => \DecodeOut[1]_i_8_n_0\,
      O => \DecodeOut[0]_i_2_n_0\
    );
\DecodeOut[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF80AA"
    )
        port map (
      I0 => sclk_reg(6),
      I1 => \Col[3]_i_12_n_0\,
      I2 => sclk_reg(7),
      I3 => sclk_reg(8),
      I4 => \DecodeOut[0]_i_5_n_0\,
      I5 => \DecodeOut[0]_i_6_n_0\,
      O => \DecodeOut[0]_i_3_n_0\
    );
\DecodeOut[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => sclk_reg(8),
      I1 => sclk_reg(7),
      I2 => \Col[3]_i_7_n_0\,
      I3 => \DecodeOut[0]_i_7_n_0\,
      O => \DecodeOut[0]_i_4_n_0\
    );
\DecodeOut[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFDFDFDFD"
    )
        port map (
      I0 => sclk_reg(3),
      I1 => \DecodeOut[0]_i_8_n_0\,
      I2 => \Col[3]_i_9_n_0\,
      I3 => \DecodeOut[0]_i_9_n_0\,
      I4 => \Col[3]_i_10_n_0\,
      I5 => \Col[3]_i_8_n_0\,
      O => \DecodeOut[0]_i_5_n_0\
    );
\DecodeOut[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4800"
    )
        port map (
      I0 => JB_IBUF(3),
      I1 => JB_IBUF(2),
      I2 => JB_IBUF(1),
      I3 => JB_IBUF(0),
      O => \DecodeOut[0]_i_6_n_0\
    );
\DecodeOut[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FAFAAA8AAAAAAA"
    )
        port map (
      I0 => sclk_reg(6),
      I1 => sclk_reg(7),
      I2 => JB_IBUF(2),
      I3 => JB_IBUF(3),
      I4 => JB_IBUF(1),
      I5 => JB_IBUF(0),
      O => \DecodeOut[0]_i_7_n_0\
    );
\DecodeOut[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sclk_reg(1),
      I1 => sclk_reg(4),
      I2 => sclk_reg(13),
      O => \DecodeOut[0]_i_8_n_0\
    );
\DecodeOut[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => sclk_reg(7),
      I1 => sclk_reg(16),
      I2 => sclk_reg(10),
      I3 => sclk_reg(18),
      I4 => sclk_reg(12),
      O => \DecodeOut[0]_i_9_n_0\
    );
\DecodeOut[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEE2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \DecodeOut[2]_i_3_n_0\,
      I2 => \DecodeOut[1]_i_2_n_0\,
      I3 => \DecodeOut[1]_i_3_n_0\,
      I4 => \DecodeOut[1]_i_4_n_0\,
      I5 => \DecodeOut[1]_i_5_n_0\,
      O => \DecodeOut[1]_i_1_n_0\
    );
\DecodeOut[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => JB_IBUF(3),
      I1 => JB_IBUF(2),
      I2 => JB_IBUF(1),
      I3 => JB_IBUF(0),
      O => \DecodeOut[1]_i_10_n_0\
    );
\DecodeOut[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EFF0E0E0E0E"
    )
        port map (
      I0 => \DecodeOut[2]_i_8_n_0\,
      I1 => \DecodeOut[1]_i_6_n_0\,
      I2 => \DecodeOut[2]_i_9_n_0\,
      I3 => \Col[3]_i_2_n_0\,
      I4 => \sclk[0]_i_3_n_0\,
      I5 => \DecodeOut[1]_i_7_n_0\,
      O => \DecodeOut[1]_i_2_n_0\
    );
\DecodeOut[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545454FF5454"
    )
        port map (
      I0 => \DecodeOut[1]_i_8_n_0\,
      I1 => \DecodeOut[1]_i_9_n_0\,
      I2 => \Col[3]_i_8_n_0\,
      I3 => \DecodeOut[1]_i_7_n_0\,
      I4 => \Col[3]_i_6_n_0\,
      I5 => \sclk[0]_i_3_n_0\,
      O => \DecodeOut[1]_i_3_n_0\
    );
\DecodeOut[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8CFC8C8"
    )
        port map (
      I0 => \Col[3]_i_7_n_0\,
      I1 => \DecodeOut[3]_i_7_n_0\,
      I2 => \sclk[0]_i_3_n_0\,
      I3 => \DecodeOut[1]_i_10_n_0\,
      I4 => \Col[3]_i_4_n_0\,
      O => \DecodeOut[1]_i_4_n_0\
    );
\DecodeOut[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006000"
    )
        port map (
      I0 => JB_IBUF(2),
      I1 => JB_IBUF(3),
      I2 => JB_IBUF(0),
      I3 => JB_IBUF(1),
      I4 => \sclk[0]_i_3_n_0\,
      I5 => \Col[3]_i_2_n_0\,
      O => \DecodeOut[1]_i_5_n_0\
    );
\DecodeOut[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sclk_reg(6),
      I1 => sclk_reg(8),
      I2 => sclk_reg(7),
      O => \DecodeOut[1]_i_6_n_0\
    );
\DecodeOut[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => JB_IBUF(2),
      I1 => JB_IBUF(0),
      I2 => JB_IBUF(3),
      I3 => JB_IBUF(1),
      O => \DecodeOut[1]_i_7_n_0\
    );
\DecodeOut[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => JB_IBUF(0),
      I1 => JB_IBUF(1),
      I2 => JB_IBUF(2),
      I3 => JB_IBUF(3),
      O => \DecodeOut[1]_i_8_n_0\
    );
\DecodeOut[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sclk_reg(8),
      I1 => sclk_reg(6),
      O => \DecodeOut[1]_i_9_n_0\
    );
\DecodeOut[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFE02"
    )
        port map (
      I0 => \^p_0_in\(2),
      I1 => \DecodeOut[2]_i_2_n_0\,
      I2 => \DecodeOut[2]_i_3_n_0\,
      I3 => \DecodeOut[2]_i_4_n_0\,
      I4 => \DecodeOut[2]_i_5_n_0\,
      I5 => \DecodeOut[2]_i_6_n_0\,
      O => \DecodeOut[2]_i_1_n_0\
    );
\DecodeOut[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0054545454"
    )
        port map (
      I0 => \DecodeOut[3]_i_7_n_0\,
      I1 => \Col[3]_i_7_n_0\,
      I2 => \DecodeOut[1]_i_6_n_0\,
      I3 => \DecodeOut[3]_i_11_n_0\,
      I4 => \DecodeOut[3]_i_10_n_0\,
      I5 => \DecodeOut[1]_i_7_n_0\,
      O => \DecodeOut[2]_i_10_n_0\
    );
\DecodeOut[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800FF00080000"
    )
        port map (
      I0 => JB_IBUF(3),
      I1 => JB_IBUF(2),
      I2 => JB_IBUF(0),
      I3 => sclk_reg(7),
      I4 => JB_IBUF(1),
      I5 => \Col[3]_i_7_n_0\,
      O => \DecodeOut[2]_i_11_n_0\
    );
\DecodeOut[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sclk_reg(6),
      I1 => sclk_reg(8),
      I2 => sclk_reg(7),
      I3 => sclk_reg(9),
      O => \DecodeOut[2]_i_12_n_0\
    );
\DecodeOut[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => JB_IBUF(2),
      I1 => JB_IBUF(3),
      I2 => JB_IBUF(1),
      I3 => JB_IBUF(0),
      I4 => \sclk[0]_i_3_n_0\,
      I5 => \Col[3]_i_2_n_0\,
      O => \DecodeOut[2]_i_2_n_0\
    );
\DecodeOut[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E000F0F"
    )
        port map (
      I0 => \Col[3]_i_6_n_0\,
      I1 => \DecodeOut[2]_i_7_n_0\,
      I2 => \sclk[0]_i_3_n_0\,
      I3 => \DecodeOut[3]_i_7_n_0\,
      I4 => \DecodeOut[3]_i_6_n_0\,
      I5 => \Col[3]_i_2_n_0\,
      O => \DecodeOut[2]_i_3_n_0\
    );
\DecodeOut[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555554444FF4F"
    )
        port map (
      I0 => \DecodeOut[3]_i_7_n_0\,
      I1 => \DecodeOut[2]_i_8_n_0\,
      I2 => \Col[3]_i_2_n_0\,
      I3 => \Col[3]_i_4_n_0\,
      I4 => \DecodeOut[2]_i_9_n_0\,
      I5 => \sclk[0]_i_3_n_0\,
      O => \DecodeOut[2]_i_4_n_0\
    );
\DecodeOut[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF04"
    )
        port map (
      I0 => JB_IBUF(2),
      I1 => \Col[3]_i_6_n_0\,
      I2 => \sclk[0]_i_3_n_0\,
      I3 => \DecodeOut[2]_i_10_n_0\,
      I4 => \DecodeOut[2]_i_11_n_0\,
      O => \DecodeOut[2]_i_5_n_0\
    );
\DecodeOut[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \sclk[0]_i_3_n_0\,
      I1 => \Col[3]_i_2_n_0\,
      I2 => JB_IBUF(3),
      I3 => JB_IBUF(2),
      I4 => JB_IBUF(1),
      I5 => JB_IBUF(0),
      O => \DecodeOut[2]_i_6_n_0\
    );
\DecodeOut[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000010101FF"
    )
        port map (
      I0 => \DecodeOut[3]_i_11_n_0\,
      I1 => sclk_reg(9),
      I2 => \Col[3]_i_7_n_0\,
      I3 => \Col[3]_i_12_n_0\,
      I4 => \DecodeOut[2]_i_12_n_0\,
      I5 => \Col[3]_i_11_n_0\,
      O => \DecodeOut[2]_i_7_n_0\
    );
\DecodeOut[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => \Col[3]_i_8_n_0\,
      I1 => \Col[3]_i_10_n_0\,
      I2 => sclk_reg(7),
      I3 => sclk_reg(6),
      I4 => sclk_reg(8),
      O => \DecodeOut[2]_i_8_n_0\
    );
\DecodeOut[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => JB_IBUF(0),
      I1 => JB_IBUF(1),
      I2 => JB_IBUF(3),
      I3 => JB_IBUF(2),
      O => \DecodeOut[2]_i_9_n_0\
    );
\DecodeOut[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E200E2E2"
    )
        port map (
      I0 => \^p_0_in\(3),
      I1 => \DecodeOut[3]_i_2_n_0\,
      I2 => \DecodeOut[3]_i_3_n_0\,
      I3 => \DecodeOut[3]_i_4_n_0\,
      I4 => \DecodeOut[3]_i_5_n_0\,
      O => \DecodeOut[3]_i_1_n_0\
    );
\DecodeOut[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => sclk_reg(6),
      I1 => sclk_reg(8),
      I2 => sclk_reg(16),
      I3 => sclk_reg(10),
      I4 => sclk_reg(18),
      I5 => sclk_reg(12),
      O => \DecodeOut[3]_i_10_n_0\
    );
\DecodeOut[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => sclk_reg(7),
      I1 => sclk_reg(6),
      I2 => sclk_reg(8),
      O => \DecodeOut[3]_i_11_n_0\
    );
\DecodeOut[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F030B030F030A02"
    )
        port map (
      I0 => \Col[3]_i_6_n_0\,
      I1 => \DecodeOut[3]_i_6_n_0\,
      I2 => \sclk[0]_i_3_n_0\,
      I3 => \DecodeOut[3]_i_7_n_0\,
      I4 => \Col[3]_i_5_n_0\,
      I5 => \Col[3]_i_4_n_0\,
      O => \DecodeOut[3]_i_2_n_0\
    );
\DecodeOut[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAA8"
    )
        port map (
      I0 => \Col[3]_i_8_n_0\,
      I1 => \Col[3]_i_10_n_0\,
      I2 => sclk_reg(7),
      I3 => \Col[3]_i_7_n_0\,
      I4 => \sclk[0]_i_3_n_0\,
      I5 => \DecodeOut[3]_i_8_n_0\,
      O => \DecodeOut[3]_i_3_n_0\
    );
\DecodeOut[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFAAAAAAAA"
    )
        port map (
      I0 => \sclk[0]_i_3_n_0\,
      I1 => sclk_reg(8),
      I2 => sclk_reg(6),
      I3 => sclk_reg(7),
      I4 => \Col[3]_i_10_n_0\,
      I5 => \Col[3]_i_8_n_0\,
      O => \DecodeOut[3]_i_4_n_0\
    );
\DecodeOut[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000060888800"
    )
        port map (
      I0 => JB_IBUF(0),
      I1 => JB_IBUF(1),
      I2 => sclk_reg(7),
      I3 => JB_IBUF(2),
      I4 => JB_IBUF(3),
      I5 => \DecodeOut[3]_i_9_n_0\,
      O => \DecodeOut[3]_i_5_n_0\
    );
\DecodeOut[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F77F"
    )
        port map (
      I0 => JB_IBUF(3),
      I1 => JB_IBUF(2),
      I2 => JB_IBUF(0),
      I3 => JB_IBUF(1),
      O => \DecodeOut[3]_i_6_n_0\
    );
\DecodeOut[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => JB_IBUF(1),
      I1 => JB_IBUF(0),
      I2 => JB_IBUF(3),
      I3 => JB_IBUF(2),
      O => \DecodeOut[3]_i_7_n_0\
    );
\DecodeOut[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7FFFFFF00C0C000"
    )
        port map (
      I0 => \DecodeOut[3]_i_10_n_0\,
      I1 => JB_IBUF(2),
      I2 => JB_IBUF(3),
      I3 => JB_IBUF(0),
      I4 => JB_IBUF(1),
      I5 => \DecodeOut[3]_i_11_n_0\,
      O => \DecodeOut[3]_i_8_n_0\
    );
\DecodeOut[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => \Col[3]_i_7_n_0\,
      I1 => sclk_reg(7),
      I2 => sclk_reg(8),
      I3 => sclk_reg(6),
      O => \DecodeOut[3]_i_9_n_0\
    );
\DecodeOut_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DecodeOut[0]_i_1_n_0\,
      Q => \^p_0_in\(0),
      R => '0'
    );
\DecodeOut_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DecodeOut[1]_i_1_n_0\,
      Q => \^p_0_in\(1),
      R => '0'
    );
\DecodeOut_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DecodeOut[2]_i_1_n_0\,
      Q => \^p_0_in\(2),
      R => '0'
    );
\DecodeOut_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \DecodeOut[3]_i_1_n_0\,
      Q => \^p_0_in\(3),
      R => '0'
    );
\last_input[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => Q(1),
      I1 => \^p_0_in\(1),
      I2 => Q(0),
      I3 => \^p_0_in\(0),
      I4 => \last_input[3]_i_2_n_0\,
      O => E(0)
    );
\last_input[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^p_0_in\(2),
      I1 => Q(2),
      I2 => \^p_0_in\(3),
      I3 => Q(3),
      O => \last_input[3]_i_2_n_0\
    );
\sclk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Col[3]_i_5_n_0\,
      I1 => \sclk[0]_i_3_n_0\,
      O => sclk
    );
\sclk[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \Col[3]_i_9_n_0\,
      I1 => sclk_reg(1),
      I2 => sclk_reg(4),
      I3 => sclk_reg(13),
      I4 => sclk_reg(3),
      O => \sclk[0]_i_3_n_0\
    );
\sclk[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclk_reg(0),
      O => \sclk[0]_i_4_n_0\
    );
\sclk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[0]_i_2_n_7\,
      Q => sclk_reg(0),
      R => sclk
    );
\sclk_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sclk_reg[0]_i_2_n_0\,
      CO(2) => \sclk_reg[0]_i_2_n_1\,
      CO(1) => \sclk_reg[0]_i_2_n_2\,
      CO(0) => \sclk_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sclk_reg[0]_i_2_n_4\,
      O(2) => \sclk_reg[0]_i_2_n_5\,
      O(1) => \sclk_reg[0]_i_2_n_6\,
      O(0) => \sclk_reg[0]_i_2_n_7\,
      S(3 downto 1) => sclk_reg(3 downto 1),
      S(0) => \sclk[0]_i_4_n_0\
    );
\sclk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[8]_i_1_n_5\,
      Q => sclk_reg(10),
      R => sclk
    );
\sclk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[8]_i_1_n_4\,
      Q => sclk_reg(11),
      R => sclk
    );
\sclk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[12]_i_1_n_7\,
      Q => sclk_reg(12),
      R => sclk
    );
\sclk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg[8]_i_1_n_0\,
      CO(3) => \sclk_reg[12]_i_1_n_0\,
      CO(2) => \sclk_reg[12]_i_1_n_1\,
      CO(1) => \sclk_reg[12]_i_1_n_2\,
      CO(0) => \sclk_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg[12]_i_1_n_4\,
      O(2) => \sclk_reg[12]_i_1_n_5\,
      O(1) => \sclk_reg[12]_i_1_n_6\,
      O(0) => \sclk_reg[12]_i_1_n_7\,
      S(3 downto 0) => sclk_reg(15 downto 12)
    );
\sclk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[12]_i_1_n_6\,
      Q => sclk_reg(13),
      R => sclk
    );
\sclk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[12]_i_1_n_5\,
      Q => sclk_reg(14),
      R => sclk
    );
\sclk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[12]_i_1_n_4\,
      Q => sclk_reg(15),
      R => sclk
    );
\sclk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[16]_i_1_n_7\,
      Q => sclk_reg(16),
      R => sclk
    );
\sclk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg[12]_i_1_n_0\,
      CO(3) => \NLW_sclk_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sclk_reg[16]_i_1_n_1\,
      CO(1) => \sclk_reg[16]_i_1_n_2\,
      CO(0) => \sclk_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg[16]_i_1_n_4\,
      O(2) => \sclk_reg[16]_i_1_n_5\,
      O(1) => \sclk_reg[16]_i_1_n_6\,
      O(0) => \sclk_reg[16]_i_1_n_7\,
      S(3 downto 0) => sclk_reg(19 downto 16)
    );
\sclk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[16]_i_1_n_6\,
      Q => sclk_reg(17),
      R => sclk
    );
\sclk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[16]_i_1_n_5\,
      Q => sclk_reg(18),
      R => sclk
    );
\sclk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[16]_i_1_n_4\,
      Q => sclk_reg(19),
      R => sclk
    );
\sclk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[0]_i_2_n_6\,
      Q => sclk_reg(1),
      R => sclk
    );
\sclk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[0]_i_2_n_5\,
      Q => sclk_reg(2),
      R => sclk
    );
\sclk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[0]_i_2_n_4\,
      Q => sclk_reg(3),
      R => sclk
    );
\sclk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[4]_i_1_n_7\,
      Q => sclk_reg(4),
      R => sclk
    );
\sclk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg[0]_i_2_n_0\,
      CO(3) => \sclk_reg[4]_i_1_n_0\,
      CO(2) => \sclk_reg[4]_i_1_n_1\,
      CO(1) => \sclk_reg[4]_i_1_n_2\,
      CO(0) => \sclk_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg[4]_i_1_n_4\,
      O(2) => \sclk_reg[4]_i_1_n_5\,
      O(1) => \sclk_reg[4]_i_1_n_6\,
      O(0) => \sclk_reg[4]_i_1_n_7\,
      S(3 downto 0) => sclk_reg(7 downto 4)
    );
\sclk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[4]_i_1_n_6\,
      Q => sclk_reg(5),
      R => sclk
    );
\sclk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[4]_i_1_n_5\,
      Q => sclk_reg(6),
      R => sclk
    );
\sclk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[4]_i_1_n_4\,
      Q => sclk_reg(7),
      R => sclk
    );
\sclk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[8]_i_1_n_7\,
      Q => sclk_reg(8),
      R => sclk
    );
\sclk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sclk_reg[4]_i_1_n_0\,
      CO(3) => \sclk_reg[8]_i_1_n_0\,
      CO(2) => \sclk_reg[8]_i_1_n_1\,
      CO(1) => \sclk_reg[8]_i_1_n_2\,
      CO(0) => \sclk_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sclk_reg[8]_i_1_n_4\,
      O(2) => \sclk_reg[8]_i_1_n_5\,
      O(1) => \sclk_reg[8]_i_1_n_6\,
      O(0) => \sclk_reg[8]_i_1_n_7\,
      S(3 downto 0) => sclk_reg(11 downto 8)
    );
\sclk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \sclk_reg[8]_i_1_n_6\,
      Q => sclk_reg(9),
      R => sclk
    );
\seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4086"
    )
        port map (
      I0 => \^p_0_in\(2),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(3),
      I3 => \^p_0_in\(1),
      O => seg_OBUF(0)
    );
\seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E228"
    )
        port map (
      I0 => \^p_0_in\(2),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      I3 => \^p_0_in\(3),
      O => seg_OBUF(1)
    );
\seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B002"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(2),
      I3 => \^p_0_in\(3),
      O => seg_OBUF(2)
    );
\seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9806"
    )
        port map (
      I0 => \^p_0_in\(2),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(3),
      I3 => \^p_0_in\(1),
      O => seg_OBUF(3)
    );
\seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"445C"
    )
        port map (
      I0 => \^p_0_in\(3),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(2),
      I3 => \^p_0_in\(1),
      O => seg_OBUF(4)
    );
\seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B82"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(2),
      I2 => \^p_0_in\(3),
      I3 => \^p_0_in\(1),
      O => seg_OBUF(5)
    );
\seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0843"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(2),
      I2 => \^p_0_in\(3),
      I3 => \^p_0_in\(1),
      O => seg_OBUF(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PasswordDetector is
  port (
    valid_pass_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \last_input_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end PasswordDetector;

architecture STRUCTURE of PasswordDetector is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \digits_entered[0]_i_1_n_0\ : STD_LOGIC;
  signal \digits_entered[1]_i_1_n_0\ : STD_LOGIC;
  signal \digits_entered[2]_i_1_n_0\ : STD_LOGIC;
  signal entered_passcode : STD_LOGIC;
  signal \entered_passcode_reg_n_0_[12]\ : STD_LOGIC;
  signal \entered_passcode_reg_n_0_[13]\ : STD_LOGIC;
  signal \entered_passcode_reg_n_0_[14]\ : STD_LOGIC;
  signal \entered_passcode_reg_n_0_[15]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal passcode_match0 : STD_LOGIC;
  signal passcode_match_i_2_n_0 : STD_LOGIC;
  signal passcode_match_i_3_n_0 : STD_LOGIC;
  signal passcode_match_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \digits_entered[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \digits_entered[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \digits_entered[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of passcode_match_i_4 : label is "soft_lutpair16";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\digits_entered[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \digits_entered[0]_i_1_n_0\
    );
\digits_entered[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \digits_entered[1]_i_1_n_0\
    );
\digits_entered[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \digits_entered[2]_i_1_n_0\
    );
\digits_entered_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \digits_entered[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\digits_entered_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \digits_entered[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\digits_entered_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \digits_entered[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\entered_passcode[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222A"
    )
        port map (
      I0 => E(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => entered_passcode
    );
\entered_passcode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => D(0),
      Q => p_0_in(4),
      R => '0'
    );
\entered_passcode_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(10),
      Q => p_0_in(14),
      R => '0'
    );
\entered_passcode_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(11),
      Q => p_0_in(15),
      R => '0'
    );
\entered_passcode_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(12),
      Q => \entered_passcode_reg_n_0_[12]\,
      R => '0'
    );
\entered_passcode_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(13),
      Q => \entered_passcode_reg_n_0_[13]\,
      R => '0'
    );
\entered_passcode_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(14),
      Q => \entered_passcode_reg_n_0_[14]\,
      R => '0'
    );
\entered_passcode_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(15),
      Q => \entered_passcode_reg_n_0_[15]\,
      R => '0'
    );
\entered_passcode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => D(1),
      Q => p_0_in(5),
      R => '0'
    );
\entered_passcode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => D(2),
      Q => p_0_in(6),
      R => '0'
    );
\entered_passcode_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => D(3),
      Q => p_0_in(7),
      R => '0'
    );
\entered_passcode_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(4),
      Q => p_0_in(8),
      R => '0'
    );
\entered_passcode_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(5),
      Q => p_0_in(9),
      R => '0'
    );
\entered_passcode_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(6),
      Q => p_0_in(10),
      R => '0'
    );
\entered_passcode_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(7),
      Q => p_0_in(11),
      R => '0'
    );
\entered_passcode_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(8),
      Q => p_0_in(12),
      R => '0'
    );
\entered_passcode_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => entered_passcode,
      D => p_0_in(9),
      Q => p_0_in(13),
      R => '0'
    );
\last_input_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \last_input_reg[3]_0\(0),
      R => '0'
    );
\last_input_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \last_input_reg[3]_0\(1),
      R => '0'
    );
\last_input_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \last_input_reg[3]_0\(2),
      R => '0'
    );
\last_input_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \last_input_reg[3]_0\(3),
      R => '0'
    );
passcode_match_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => passcode_match_i_2_n_0,
      I1 => passcode_match_i_3_n_0,
      I2 => p_0_in(6),
      I3 => p_0_in(5),
      I4 => p_0_in(4),
      I5 => passcode_match_i_4_n_0,
      O => passcode_match0
    );
passcode_match_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(11),
      I2 => p_0_in(9),
      I3 => p_0_in(10),
      I4 => p_0_in(14),
      I5 => p_0_in(13),
      O => passcode_match_i_2_n_0
    );
passcode_match_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \entered_passcode_reg_n_0_[14]\,
      I1 => \entered_passcode_reg_n_0_[13]\,
      I2 => p_0_in(15),
      I3 => \entered_passcode_reg_n_0_[12]\,
      I4 => \^q\(0),
      I5 => \entered_passcode_reg_n_0_[15]\,
      O => passcode_match_i_3_n_0
    );
passcode_match_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(7),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => passcode_match_i_4_n_0
    );
passcode_match_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => passcode_match0,
      Q => valid_pass_OBUF,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PmodKYPD is
  port (
    clk : in STD_LOGIC;
    JB : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    valid_pass : inout STD_LOGIC;
    keypresses : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PmodKYPD : entity is true;
end PmodKYPD;

architecture STRUCTURE of PmodKYPD is
  signal C0_n_4 : STD_LOGIC;
  signal JB_IBUF : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \JB_IBUF__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal keypresses_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal last_input : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal valid_pass_OBUF : STD_LOGIC;
begin
C0: entity work.Decoder
     port map (
      CLK => clk_IBUF_BUFG,
      \Col_reg[3]_0\(3 downto 0) => \JB_IBUF__0\(3 downto 0),
      E(0) => C0_n_4,
      JB_IBUF(3 downto 0) => JB_IBUF(7 downto 4),
      Q(3 downto 0) => last_input(3 downto 0),
      p_0_in(3 downto 0) => p_0_in(3 downto 0),
      seg_OBUF(6 downto 0) => seg_OBUF(6 downto 0)
    );
C2: entity work.PasswordDetector
     port map (
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => p_0_in(3 downto 0),
      E(0) => C0_n_4,
      Q(2 downto 0) => keypresses_OBUF(2 downto 0),
      \last_input_reg[3]_0\(3 downto 0) => last_input(3 downto 0),
      valid_pass_OBUF => valid_pass_OBUF
    );
\JB_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => JB(4),
      O => JB_IBUF(4)
    );
\JB_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => JB(5),
      O => JB_IBUF(5)
    );
\JB_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => JB(6),
      O => JB_IBUF(6)
    );
\JB_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => JB(7),
      O => JB_IBUF(7)
    );
\JB_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \JB_IBUF__0\(0),
      O => JB(0)
    );
\JB_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \JB_IBUF__0\(1),
      O => JB(1)
    );
\JB_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \JB_IBUF__0\(2),
      O => JB(2)
    );
\JB_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \JB_IBUF__0\(3),
      O => JB(3)
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => an(3)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\keypresses_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => keypresses_OBUF(0),
      O => keypresses(0)
    );
\keypresses_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => keypresses_OBUF(1),
      O => keypresses(1)
    );
\keypresses_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => keypresses_OBUF(2),
      O => keypresses(2)
    );
\seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(0)
    );
\seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(1),
      O => seg(1)
    );
\seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(2),
      O => seg(2)
    );
\seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(3),
      O => seg(3)
    );
\seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(4),
      O => seg(4)
    );
\seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(5),
      O => seg(5)
    );
\seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(6),
      O => seg(6)
    );
valid_pass_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => valid_pass_OBUF,
      O => valid_pass
    );
end STRUCTURE;
