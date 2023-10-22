% Оголошення та створення об'єкту класу SingleLayerNetwork
single_layer_network = SingleLayerNetwork();

% Вхідні дані для перевірки
single_layer_inputs = [0.5, 0.8];

% Передача вхідних даних через мережу та отримання вихідного значення
single_layer_output = single_layer_network.forward(single_layer_inputs);

disp('Single Layer Network');

% Виведення результатів
disp('Weights:');
disp(single_layer_network.weights);

disp('Bias:');
disp(single_layer_network.bias);

disp('Input:');
disp(single_layer_inputs);

disp('Output:');
disp(single_layer_output);

%=========================================================================
% Оголошення та створення об'єкту класу Three Layer Network
three_layer_network = ThreeLayerNetwork(2); 

% Вхідні дані для перевірки
three_layer_inputs = [0.5; 0.8]; % Input data should be in column vector form

% Передача вхідних даних через мережу та отримання вихідного значення
three_layer_output = three_layer_network.forward(three_layer_inputs);

disp('Three Layer Network');
disp('Weights 1:');
disp(three_layer_network.weights1);

disp('Weights 2:');
disp(three_layer_network.weights2);

disp('Bias 1:');
disp(three_layer_network.bias1);

disp('Bias 2:');
disp(three_layer_network.bias2);

disp('Input:');
disp(three_layer_inputs);

disp('Output:');
disp(three_layer_output);

%========================================================
% Оголошення та створення об'єкту класу DynamicThreeLayerNetwork
dynamic_three_layer_network = DynamicThreeLayerNetwork();

% Вхідні дані для перевірки
dynamic_three_layer_inputs = rand(3, 1); % Вхідні дані - випадковий вектор розміром 3x1

% Передача вхідних даних через мережу та отримання вихідного значення
dynamic_three_layer_output = dynamic_three_layer_network.forward(dynamic_three_layer_inputs);

% Виведення результатів
disp('Dynamic Three Layer Network');

disp('Weights 1:');
disp(dynamic_three_layer_network.weights1);

disp('Weights 2:');
disp(dynamic_three_layer_network.weights2);

disp('Bias 1:');
disp(dynamic_three_layer_network.bias1);

disp('Bias 2:');
disp(dynamic_three_layer_network.bias2);

disp('Input:');
disp(dynamic_three_layer_inputs);

disp('Output:');
disp(dynamic_three_layer_output);

%========================================================
% Оголошення та створення об'єкту класу FullyConnectedThreeLayerNetwork
fully_connected_three_layer_network = FullyConnectedThreeLayerNetwork();

% Вхідні дані для перевірки
fully_connected_three_layer_inputs = [0.5; 0.8]; % Вхідні дані - випадковий вектор розміром 2x1

% Передача вхідних даних через мережу та отримання вихідного значення
fully_connected_three_layer_output = fully_connected_three_layer_network.forward(fully_connected_three_layer_inputs);

% Виведення результатів
disp('Fully Connected Three Layer Network');

disp('Weights 1:');
disp(fully_connected_three_layer_network.weights1);

disp('Weights 2:');
disp(fully_connected_three_layer_network.weights2);

disp('Weights 3:');
disp(fully_connected_three_layer_network.weights3);

disp('Bias 1:');
disp(fully_connected_three_layer_network.bias1);

disp('Bias 2:');
disp(fully_connected_three_layer_network.bias2);

disp('Bias 3:');
disp(fully_connected_three_layer_network.bias3);

disp('Input:');
disp(fully_connected_three_layer_inputs);

disp('Output:');
disp(fully_connected_three_layer_output);

%====================================================================

% Оголошення та створення об'єкту класу SquareNetwork
square_network = SquareNetwork();

% Вхідні дані для перевірки
square_inputs = rand(2, 1); % Випадкові вхідні дані - вектор розміром 2x1

% Передача вхідних даних через мережу та отримання вихідного значення
square_output = square_network.forward(square_inputs);

% Виведення результатів
disp('Square Network');

disp('Weights:');
disp(square_network.weights);

disp('Bias:');
disp(square_network.bias);

disp('Input:');
disp(square_inputs);

disp('Output:');
disp(square_output);

