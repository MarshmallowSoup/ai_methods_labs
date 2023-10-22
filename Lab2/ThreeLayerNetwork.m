classdef ThreeLayerNetwork
    properties
        inputSize;
        hiddenSize = 3;
        outputSize = 1;
        weights1;
        weights2;
        bias1;
        bias2;
    end
    
    methods
        function obj = ThreeLayerNetwork(inputSize)
            obj.inputSize = inputSize;
            obj.weights1 = rand(obj.hiddenSize, obj.inputSize);
            obj.weights2 = rand(obj.outputSize, obj.hiddenSize);
            obj.bias1 = rand(obj.hiddenSize, 1);
            obj.bias2 = rand(obj.outputSize, 1);
        end
        
        function output = forward(obj, inputs)
            % Ensure inputs is a column vector
            inputs = inputs(:);
            
            % Check if the number of inputs matches the inputSize
            assert(length(inputs) == obj.inputSize, 'Invalid number of inputs');
            
            % Compute the output of the first layer
            hidden_output1 = obj.sigmoid(obj.weights1 * inputs + obj.bias1);
            
            % Compute the output of the second layer (final output)
            output = obj.sigmoid(obj.weights2 * hidden_output1 + obj.bias2);
        end
        
        function output = sigmoid(~, x)
            output = 1 ./ (1 + exp(-x));
        end
    end
end
