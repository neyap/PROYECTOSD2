library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplicador is
    Port ( Entrada : in STD_LOGIC_VECTOR(15 downto 0);
           Numero : in STD_LOGIC_VECTOR(4 downto 0); -- Número por el cual multiplicar la entrada
           Resultado : out STD_LOGIC_VECTOR(31 downto 0));
end Multiplicador;

architecture Behavioral of Multiplicador is
    signal Entrada_unsigned : unsigned(15 downto 0);
    signal Temp_Resultado_unsigned : unsigned(31 downto 0); -- Señal temporal para almacenar el resultado de la multiplicación
    signal Resultado_unsigned : unsigned(31 downto 0); -- Señal final del resultado
begin
    Entrada_unsigned <= unsigned(Entrada);
    
    -- Multiplicación por el número especificado
    Temp_Resultado_unsigned <= Entrada_unsigned * to_unsigned(to_integer(unsigned(Numero)), 16);
    
    -- División por 1000 (mil)
    Resultado_unsigned <= Temp_Resultado_unsigned / to_unsigned(1000, 32);
    
    Resultado <= std_logic_vector(Resultado_unsigned);
end Behavioral;

