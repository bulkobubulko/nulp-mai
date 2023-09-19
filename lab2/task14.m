% task14

% Define input 'p1' and 'p2'
p1 = [0, 1];
p2 = [1, 0];

% Define weights and biases for logical OR
w_or = [1, 1];
b_or = -0.5;

% Define weights and biases for logical AND
w_and = [1, 1];
b_and = -1.5;

% Calculate the neuron's output for logical OR
y_or = hardlim(w_or * [p1; p2] + b_or);

% Calculate the neuron's output for logical AND
y_and = hardlim(w_and * [p1; p2] + b_and);

% Display the results
disp('Logical OR:');
disp(y_or);

disp('Logical AND:');
disp(y_and);


% Explanation:
% We set our weights to [1, 1] to control the neuron's behavior. With 
% these weights, the output depends on the bias. Here's how it works 
% for each input:
% - [0, 0]: The weighted sum is 0.
% - [0, 1] or [1, 0]: The weighted sum is 1.
% - [1, 1]: The weighted sum is 2.
%
%
% Now, let's consider the biases:
%
% For the logical OR operation, we set the bias to -0.5.
% This ensures that the output is < 0 only when the input is [0, 0], 
% as the weighted sum is 0 (see the explanation above). After adding 
% the bias (-0.5), the result is -0.5. For all other input combinations 
% ([0, 1], [1, 0], [1, 1]), the output > 0. Subsequently, the output
% is fed into the hardlim function, where if < 0 -> 0, >= 0 -> 1.
%
% For the logical AND operation, we set the bias to -1.5.
% This ensure that the output is > 0 only when the input is [1, 1], 
% as the weighted sum is 2 (see the explanation above). After adding 
% the bias (-1.5), the result is 0.5. For all other input combinations 
% ([0, 0], [0, 1], [1, 0]), the output < 0. Subsequently, the output
% is fed into the hardlim function, where if < 0 -> 0, >= 0 -> 1.