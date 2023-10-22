classdef DynamicThreeLayerNetwork
    properties
        inputSize = 3;
        hiddenSize = 3;
        outputSize = 3;
        weights1;
        weights2;
        bias1;
        bias2;
    end
    
    methods
        function obj = DynamicThreeLayerNetwork()
            obj.weights1 = rand(obj.hiddenSize, obj.inputSize);
            obj.weights2 = rand(obj.outputSize, obj.hiddenSize);
            obj.bias1 = rand(obj.hiddenSize, 1);
            obj.bias2 = rand(obj.outputSize, 1);
        end
        
        function output = forward(obj, inputs)
            hidden_output = obj.sigmoid(obj.weights1 * inputs + obj.bias1);
            output = obj.sigmoid(obj.weights2 * hidden_output + obj.bias2);
        end
        
        function output = sigmoid(~, x)
            output = 1 ./ (1 + exp(-x));
        end
    end
end
