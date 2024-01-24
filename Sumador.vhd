library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sumador is
    Port ( A, B : in STD_LOGIC_VECTOR(31 downto 0);
           Suma : out STD_LOGIC_VECTOR(31 downto 0));
end Sumador;

architecture Behavioral of Sumador is
    signal A_unsigned, B_unsigned, Suma_unsigned : unsigned(31 downto 0);
begin
    A_unsigned <= unsigned(A);
    B_unsigned <= unsigned(B);
    Suma_unsigned <= A_unsigned + B_unsigned;
    
    Suma <= std_logic_vector(Suma_unsigned);
end Behavioral;
