library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador is
    Port ( Clock, Start, Reset, Entrada : in STD_LOGIC;
           ContadorSalida : out STD_LOGIC_VECTOR (15 downto 0));
end Contador;

architecture Behavioral of Contador is
    signal contadorValor : unsigned(15 downto 0) := (others => '0');
    signal contar : boolean := false;

begin
    proceso_contador: process (Clock, Reset)
    begin
        if (Reset = '1') then
            contadorValor <= (others => '0');
            contar <= false;
        elsif rising_edge(Clock) then
            if (Start = '1') then
                contar <= true;
            end if;

            if (contar = true) then
                contadorValor <= contadorValor + 1;
            end if;
        end if;
    end process proceso_contador;

    ContadorSalida <= std_logic_vector(contadorValor);

end Behavioral;
