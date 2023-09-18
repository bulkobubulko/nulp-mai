% task 9

% Create a default network object
net = network;

% Get a cell array of field names
field_list = fieldnames(net);

% Display the fields using celldisp
disp('Fields of the net object:');
celldisp(field_list);

% Get a cell array of cells in the net object
cell_list = struct2cell(net);

% Display the cells using celldisp
disp('Cells of the net object:');
celldisp(cell_list);