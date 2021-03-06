library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity async_neuron is 
	Port(
		weight: in unsigned(0 to 1);
		perceptron_input: in unsigned(0 to 1);
		bias: in unsigned(0 to 1);
		neuron_output: out unsigned(0 to 3)
	);
end async_neuron;

architecture behavior of async_neuron is
begin
	neuron_out: process(weight, perceptron_input, bias, neuron_output)
	begin
		neuron_output <= (weight * perceptron_input) + bias;
	end process neuron_out;
end behavior;