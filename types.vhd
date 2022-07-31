-- SPDX-License-Identifier: MIT
-- https://github.com/m-kru/vhdl-types
-- Copyright (c) 2022 Michał Kruszewski

library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;


-- Package types collects useful types that are frequently used, but are not part of the standard.
package types is

   type bitv_vector    is array (natural range <>) of bit_vector;
   type bitv_vector_2d is array (natural range <>) of bitv_vector;
   type bitv_vector_3d is array (natural range <>) of bitv_vector_2d;

   type slv_vector    is array (natural range <>) of std_logic_vector;
   type slv_vector_2d is array (natural range <>) of slv_vector;
   type slv_vector_3d is array (natural range <>) of slv_vector_2d;

   function to_slv_vector(bv : bitv_vector) return slv_vector;

   subtype int64        is signed(63 downto 0);
   type    int64_vector is array (natural range <>) of int64;

   type string_vector is array (natural range <>) of string;

end package;


package body types is

   function to_slv_vector(bv : bitv_vector) return slv_vector is
      variable slvv : slv_vector(bv'range)(bv(0)'range);
   begin
      for i in bv'range loop
         slvv(i) := to_std_logic_vector(bv(i));
      end loop;
      return slvv;
   end function;

end package body;
