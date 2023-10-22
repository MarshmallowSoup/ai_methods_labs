classdef SquareNetwork
    properties
        inputSize = 2;
        hiddenSize = 10;
        outputSize = 10;
        weights;
        bias;
    end
    
    methods
        function obj = SquareNetwork()
            obj.weights = rand(obj.hiddenSize, obj.inputSize);
            obj.bias = rand(obj.hiddenSize, 1);
        end
        
        function output = forward(obj, inputs)
            hidden_output = obj.sigmoid(obj.weights * inputs + obj.bias);
            output = hidden_output;
        end
        
        function output = sigmoid(~, x)
            output = 1 ./ (1 + exp(-x));
        end
    end
end
