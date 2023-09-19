% task1

% Display information about the function
name = hardlim('name')
inrange = hardlim('active')
outrange = hardlim('output')

% Build function plots
% Define a range of values for 'n'
n = -5:0.1:5;

% Calculate the activation function values 'a' and its derivative 'da' for 
% the given 'n'
a = hardlim(n);
da = dhardlim(n);

% Plot the activation function in red and its derivative in cyan
plot(n, a, 'r')
hold on 
plot(n, da, 'c')

% Calculate output vectors A and derivative dA_dN for a layer of 
% three neurons with an input vector N consisting of three components
N = [-0.7; 0.1; 0.8];
A = hardlim(N)
dA_dN = dhardlim(N, A)