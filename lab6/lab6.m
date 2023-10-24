% Define the stable points
T = [1 -1; -1 1; 1 1; -1 -1]';

% Plot the stable points
plot(T(1, :), T(2, :), '*r');
axis([-1.1 1.1 -1.1 1.1]);
title('Stable Points of the Hopfield Network');
xlabel('a(1)');
ylabel('a(2)');

% Create a Hopfield network
net = newhop(T);
W = net.LW{1, 1};
b = net.b{1, 1};

% Initialize input patterns
Ai = T;

% Simulate the network
Y = sim(net, 4, [], Ai);

% Plot the stable points
plot(T(1, :), T(2, :), '*r');
hold on;
axis([-1.1 1.1 -1.1 1.1]);
xlabel('a(1)');
ylabel('a(2)');

% Create a new Hopfield network
new_net = newhop(T);

% Simulate the network and record the trajectory of a random input
[Y, Pf, Af] = sim(new_net, 4, [], T);

% Simulate the network for 25 iterations with random inputs
for i = 1:25
    a = {randn(2, 1)};
    [Y, Pf, Af] = sim(new_net, {1, 20}, {}, a);
    record = [cell2mat(a), cell2mat(Y)];
    start = cell2mat(a);
    
    plot(start(1, 1), start(2, 1), 'kx', record(1, :), record(2, :));
end
