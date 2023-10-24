numInputs = 2; % кількість входів мережі;
numLayers = 3; % кількість шарів в мережі;
biasConnect = [1; 0; 0]; % матриця зв'язності для зміщень розміру numLayers * 1;
inputConnect = [1 1; 0 0; 0 0]; % матриця зв'язності для входів розміру numLayers * numlmputs;
layerConnect = [0 0 0; 1 0 0; 0 1 0]; % матриця зв'язності для шарів розміру numLayers * numLayers;
outputConnect = [0 0 1]; % матриця зв'язності для виходів розміру 1 * numLayers;

% Створення шаблону мережі
net = network(numInputs, numLayers, biasConnect, inputConnect, layerConnect, outputConnect)

% Аналіз структурної схеми мережі
% view(net);

% Поставити діапазони вхідних сигналів і вагові матриці
net.inputs{1}.range = [0 1];
net.inputs{2}.range = [0 1];
net.layers{1}.size = 1
net.layers{2}.size = 1
net.layers{3}.size = 1

gensim (net)

%  Поставити нульові послідовності сигналів для входів P = [0 0; 0 0] і зробити моделювання мережі
P = [0 0; 0 0]
A = sim (net, P)

% Промоделювати створену статичну мережу, т. Е. Мережу без ліній затримки, 
% використовуючи групове і послідовне уявлення вхідних сигналів
PG = [0.5 1; 1 0.5]
PS = {[0.5 1]; [1 0.5]}
AG = sim(net, PG)
AS = sim(net, PS)

% Доповнити архітектуру створеної нейронної мережі лініями затримки під час
% приймання сигналу і для сигналів між 2-м і 3-м шарами, перетворивши таким
% чином статичну мережу в динамічну
net.inputWeights{1, 1}.delays = [0 1];
net.inputWeights{1, 2}.delays = [0 1];
net.layerWeights{3, 2}.delays = [0 1 2];

% Промоделювати динамічну мережу, використовуючи групове і послідовне 
% уявлення вхідних сигналів
AG = sim(net, PG)
AS = sim(net, PS)

% Аналіз структурної схеми мережі
view(net);

asgnet = network();

% Задання значень полів обчислювальної моделі за допомогою операторів присвоювання
asgnet.numInputs = 2;
asgnet.numLayers = 3;
asgnet.biasConnect = [1; 0; 0];
asgnet.inputConnect = [1 1; 0 0; 0 0];
asgnet.layerConnect = [0 0 0; 1 0 0; 0 1 0];
asgnet.outputConnect = [0 0 1];

% Поставити діапазони вхідних сигналів і вагові матриці
asgnet.inputs{1}.range = [0 1];
asgnet.inputs{2}.range = [0 1];
asgnet.layers{1}.size = 1
asgnet.layers{2}.size = 1
asgnet.layers{3}.size = 1

gensim (asgnet)

% Доповнити архітектуру створеної нейронної мережі лініями затримки під час
% приймання сигналу і для сигналів між 2-м і 3-м шарами, перетворивши таким
% чином статичну мережу в динамічну
asgnet.inputWeights{1, 1}.delays = [0 1];
asgnet.inputWeights{1, 2}.delays = [0 1];
asgnet.layerWeights{3, 2}.delays = [0 1 2];

% Моделювання мережі asgnet
AG_asgnet = sim(asgnet, PG);
AS_asgnet = sim(asgnet, PS);

% Аналіз структурної схеми мережі
view(asgnet);

% Порівняння результатів роботи мереж net і asgnet
isequal(AG, AG_asgnet)  % Повинно бути true
isequal(AS, AS_asgnet)  % Повинно бути true

