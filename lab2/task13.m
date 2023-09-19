% task13

% Define input 'P'
P = [0, 1];

% Set weight 'W' and bias 'b'
W = -2;
b = 1;

% Calculate the neuron's output
output = hardlim(W * P + b);

% Display the result
disp(output);

% Explanation:
% If the input value for the hardlim function is < 0, the output is 0. If
% the input value is >= 0, the output is 1.
%
% In this example, we set our inputs to 0 and 1. After applying the weight
% and bias, we get 0*(-2)+1==1 and 1*(-2)+1==-1 respectively. Feeding 
% these values into the hardlim function results in an output of 1 and 0.