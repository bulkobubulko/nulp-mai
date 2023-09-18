% task3

% Plot with color red
% Будує графік синусоїди лінією червоного кольору
% 3 виведеною масштабною сіткою в інтервалі [xmin, xmax]

disp("Enter xmin and xmax");
xmin = input('xmin = ');
xmax = input('xmax = ');
x = xmin:0.1:xmax;
plot (x, sin(x), 'r')
grid on