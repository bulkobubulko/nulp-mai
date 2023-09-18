% task2

% Plot with color red
% Будує графік синусоїди лінією червоного кольору
% 3 виведеною масштабною сіткою в інтервалі [xmin, xmax]

function x = fun(xmin,xmax)
x = xmin:0.1:xmax;
plot (x, sin(x), 'r')
grid on
end