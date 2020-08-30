library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;


entity step_activation_function is
	Port(
		neuron_output: in unsigned (0 to 3);
		activation_result: out std_logic
	);
end step_activation_function;

architecture behavior of step_activation_function is
begin
	process(neuron_output, activation_result)
	begin
		if neuron_output >= 1 then
			activation_result <= '1';
		else
		activation_result <= '0';
		end if;
	end process;
end behavior;
