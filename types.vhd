-- SPDX-License-Identifier: MIT
-- https://github.com/m-kru/vhdl-types
-- Copyright (c) 2022 Michał Kruszewski

library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;


-- types is a package collecting useful types that are frequently used, but are not part of the standard.
package types is

   -- integer derived types.
   alias int is integer;

   subtype int8  is integer range -128 to 127;
   subtype int16 is integer range -32768 to 32767;
   subtype int32 is integer range -2147483648 to 2147483647;


   -- std_logic_vector derived types.
   alias sl  is std_logic;
   alias slv is std_logic_vector;

   subtype slv8    is slv(   7 downto 0);
   subtype slv16   is slv(  15 downto 0);
   subtype slv32   is slv(  31 downto 0);
   subtype slv64   is slv(  63 downto 0);
   subtype slv128  is slv( 127 downto 0);
   subtype slv256  is slv( 255 downto 0);
   subtype slv512  is slv( 511 downto 0);
   subtype slv1024 is slv(1023 downto 0);
   subtype slv2048 is slv(2047 downto 0);

   type slv_vector    is array (natural range <>) of std_logic_vector;
   type slv_vector_2d is array (natural range <>) of slv_vector;
   type slv_vector_3d is array (natural range <>) of slv_vector_2d;


   -- unsigned derived types.
   subtype u8    is unsigned(   7 downto 0);
   subtype u16   is unsigned(  15 downto 0);
   subtype u32   is unsigned(  31 downto 0);
   subtype u64   is unsigned(  63 downto 0);
   subtype u128  is unsigned( 127 downto 0);
   subtype u256  is unsigned( 255 downto 0);
   subtype u512  is unsigned( 511 downto 0);
   subtype u1024 is unsigned(1023 downto 0);
   subtype u2048 is unsigned(2047 downto 0);


   -- signed derived types.
   subtype s8    is signed(   7 downto 0);
   subtype s16   is signed(  15 downto 0);
   subtype s32   is signed(  31 downto 0);
   subtype s64   is signed(  63 downto 0);
   subtype s128  is signed( 127 downto 0);
   subtype s256  is signed( 255 downto 0);
   subtype s512  is signed( 511 downto 0);
   subtype s1024 is signed(1023 downto 0);
   subtype s2048 is signed(2047 downto 0);

end package;
