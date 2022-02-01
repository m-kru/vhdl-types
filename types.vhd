-- SPDX-License-Identifier: MIT
-- https://github.com/m-kru/vhdl-types
-- Copyright (c) 2022 Michał Kruszewski

library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;


-- types is a package collecting useful types that are frequently used, but are not part of the standard.
package types is

   type slv_vector    is array (natural range <>) of std_logic_vector;
   type slv_vector_2d is array (natural range <>) of slv_vector;
   type slv_vector_3d is array (natural range <>) of slv_vector_2d;


   subtype int64        is signed(63 downto 0);
   type    int64_vector is array (natural range <>) of int64;


   type string_vector is array (natural range <>) of string;

end package;
