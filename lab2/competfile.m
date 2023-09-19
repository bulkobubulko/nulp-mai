% task11

% Display information about the function
name = compet('name')
inrange = compet('active')
outrange = compet('output')

% Define a vector 'N' with four values
N = [0; 1; -0.5; 0.5];

% Calculate output vector 'A'
A = compet(N);

subplot(2, 1, 1)
bar(N)
ylabel('N')

subplot(2, 1, 2)
bar(A)
ylabel('A')
