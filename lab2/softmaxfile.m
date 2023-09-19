% task12

% Display information about the function
name = softmax('name')
inrange = softmax('active')
outrange = softmax('output')

% Define a vector 'N' with four values
N = [0; 1; -0.5; 0.5];

% Calculate output vector 'A'
A = softmax(N);

subplot(2, 1, 1)
bar(N)
ylabel('N')

subplot(2, 1, 2)
bar(A)
ylabel('A')
