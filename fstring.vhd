-- SPDX-License-Identifier: MIT
-- https://github.com/m-kru/vhdl-amba5
-- Copyright (c) 2026 Michał Kruszewski

-- The fstring package contains string types with fixed capacity.
-- The logical string ends at the first NUL, or at capacity if no NUL is present.
package fstring is

  --
  -- Fixed string types
  --

  subtype fstr256_t is string(1 to 256);

  --
  -- Null fixed string constants
  --

  constant NULL_FSTR256 : fstr256_t := (others => NUL);

  --
  -- Functions for creating fixed strings from string type
  --

  function make (str : string) return fstr256_t;

  --
  -- Functions returning length of string hold in fixed strings
  --

  function len (str : fstr256_t) return natural;

  --
  -- Functions converting to standard string type
  --

  function to_string (str : fstr256_t) return string;

end package;


package body fstring is

  function make (str : string) return fstr256_t is
    variable s : fstr256_t := NULL_FSTR256;
    variable s_idx : positive := s'low;
  begin
    for i in str'range loop
      exit when str(i) = NUL;
      s(s_idx) := str(i);
      s_idx := s_idx + 1;
    end loop;
    return s;
  end function;


  function len (str : fstr256_t) return natural is
    variable l : natural := 0;
  begin
    for i in str'range loop
      if str(i) = NUL then
        return l;
      end if;
      l := l + 1;
    end loop;
    return l;
  end function;


  function to_string (str : fstr256_t) return string is
    constant l : natural := len(str);
    variable s : string (1 to l);
  begin
    for i in 1 to l loop
      s(i) := str(i);
    end loop;
    return s;
  end function;


end package body;
