library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MSS is
    Port ( SP1, SP2, SP3, Start, Reset, Clock : in STD_LOGIC;
           ENP1, ENP2, ENP3 : out STD_LOGIC);
end MSS;

architecture Behavioral of MSS is
    type Estado is (Idle, EsperandoStart, EsperandoPersonas, EncendidoP1, EncendidoP2, EncendidoP3);
    signal estadoActual, estadoSiguiente : Estado;

begin
    proceso_estados: process (Clock, Reset)
    begin
        if (Reset = '1') then
            estadoActual <= Idle;
        elsif rising_edge(Clock) then
            estadoActual <= estadoSiguiente;
        end if;
    end process proceso_estados;

    proceso_transiciones: process (estadoActual, SP1, SP2, SP3, Start)
    begin
        case estadoActual is
            when Idle =>
                if (Start = '1') then
                    estadoSiguiente <= EsperandoStart;
                else
                    estadoSiguiente <= Idle;
                end if;

            when EsperandoStart =>
                if (Start = '0') then
                    estadoSiguiente <= EsperandoPersonas;
                else
                    estadoSiguiente <= EsperandoStart;
                end if;

            when EsperandoPersonas =>
                if (SP1 = '1') then
                    ENP1 <= '1';
                    ENP2 <= '0';
                    ENP3 <= '0';
                    estadoSiguiente <= EncendidoP1;
                elsif (SP2 = '1') then
                    ENP1 <= '0';
                    ENP2 <= '1';
                    ENP3 <= '0';
                    estadoSiguiente <= EncendidoP2;
                elsif (SP3 = '1') then
                    ENP1 <= '0';
                    ENP2 <= '0';
                    ENP3 <= '1';
                    estadoSiguiente <= EncendidoP3;
                else
                    ENP1 <= '0';
                    ENP2 <= '0';
                    ENP3 <= '0';
                    estadoSiguiente <= EsperandoPersonas;
                end if;

            when EncendidoP1 =>
                if (Start = '0') then
                    estadoSiguiente <= EsperandoStart;
                else
                    estadoSiguiente <= EncendidoP1;
                end if;

            when EncendidoP2 =>
                if (Start = '0') then
                    estadoSiguiente <= EsperandoStart;
                else
                    estadoSiguiente <= EncendidoP2;
                end if;

            when EncendidoP3 =>
                if (Start = '0') then
                    estadoSiguiente <= EsperandoStart;
                else
                    estadoSiguiente <= EncendidoP3;
                end if;

            when others =>
                estadoSiguiente <= Idle;

        end case;
    end process proceso_transiciones;

end Behavioral;
