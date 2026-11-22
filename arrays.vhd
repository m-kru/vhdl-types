-- SPDX-License-Identifier: MIT
-- https://github.com/m-kru/vhdl-types
-- Copyright (c) 2026 Michał Kruszewski

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

-- Package arrays contains useful vector types that are not present in the standard library;
package arrays is

  --
  -- bit
  --

  alias bit_array_t    is bit_vector;
  type  bit_array_2d_t is array (natural range <>, natural range <>) of bit;
  type  bit_array_3d_t is array (natural range <>, natural range <>, natural range <>) of bit;

  alias bit_vector_t    is bit_vector;
  type  bit_vector_2d_t is array (natural range <>) of bit_vector;
  type  bit_vector_3d_t is array (natural range <>) of bit_vector_2d_t;

  --
  -- std_logic
  --

  alias sl_array_t    is std_logic_vector;
  type  sl_array_2d_t is array (natural range <>, natural range <>) of std_logic;
  type  sl_array_3d_t is array (natural range <>, natural range <>, natural range <>) of std_logic;

  alias sl_vector_t    is std_logic_vector;
  type  sl_vector_2d_t is array (natural range <>) of std_logic_vector;
  type  sl_vector_3d_t is array (natural range <>) of sl_vector_2d_t;

  --
  -- string
  --

  type string_vector_t is array (natural range <>) of string;

end package;


package body arrays is

end package body;
