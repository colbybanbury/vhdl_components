library ieee;
use ieee.std_logic_1164.all;

entity mux is
  port( A, B, C, D: in std_logic; --inputs
        S0, S1 : in std_logic; --selectors
             O : out std_logic);--outputs
end mux;

architecture func of mux is
begin
  process (A,B,C,D,S0,S1) is
  begin
    if ((S0='0') and (S1='0')) then
      O <= A;
    elsif ((S0='1') and (S1='0')) then
      O <= B;
    elsif ((S0='0') and (S1='1')) then
      O <= C;
    else
      O <= D;
    end if;
  end process;
end func;
