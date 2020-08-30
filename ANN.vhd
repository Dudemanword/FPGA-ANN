library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.all;

entity ANN is
    port(
        test: in unsigned(0 to 1):= "00";
        predict_output: out std_logic_vector(0 to 8)
    );
end ANN;

architecture structure of ANN is
	type wire_array is array (0 to 8) of unsigned (0 to 3);
	signal temp_wire: wire_array;
    begin
        neurons: for i in 0 to 8 generate
            ann_perceptron: work.async_neuron
            port map(
                weight => "01",
                perceptron_input => test,
                bias => "00",
                neuron_output => temp_wire(i)
            );

            activation_function: work.step_activation_function
            port map(
                neuron_output => temp_wire(i),
                std_logic(activation_result) => predict_output(i)
            );
    end generate neurons;
end structure;