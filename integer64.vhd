-- SPDX-License-Identifier: MIT
-- https://github.com/m-kru/vhdl-types
-- Copyright (c) 2026 Michał Kruszewski

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- Package integer64 contains 64-bit wide integer type.
-- NOTE: VHDL 2019 expanded the built-in integer type to 64 bits.
-- However, the code in the package is VHDL-2008 compatible.
package integer64 is

  -- 64-bit wide integer type
  subtype int64_t is signed(63 downto 0);

  function to_int64 (int : integer) return int64_t;

  type  int64_array_t    is array (natural range <>) of int64_t;
  type  int64_array_2d_t is array (natural range <>, natural range <>) of int64_t;

  alias int64_vector_t    is int64_array_t;
  type  int64_vector_2d_t is array (natural range <>) of int64_vector_t;

end package;

package body integer64 is

  function to_int64 (int : integer) return int64_t is
  begin
    return to_signed(int, int64_t'length);
  end function;

end package body;
