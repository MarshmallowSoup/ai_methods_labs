classdef FullyConnectedThreeLayerNetwork
    properties
        inputSize = 2;
        hiddenSize = 3;
        outputSize = 1;
        weights1;
        weights2;
        weights3;
        bias1;
        bias2;
        bias3;
    end
    
    methods
        function obj = FullyConnectedThreeLayerNetwork()
            obj.weights1 = rand(obj.hiddenSize, obj.inputSize);
            obj.weights2 = rand(obj.hiddenSize, obj.hiddenSize);
            obj.weights3 = rand(obj.outputSize, obj.hiddenSize);
            obj.bias1 = rand(obj.hiddenSize, 1);
            obj.bias2 = rand(obj.hiddenSize, 1);
            obj.bias3 = rand(obj.outputSize, 1);
        end
        
        function output = forward(obj, inputs)
            hidden1_output = obj.sigmoid(obj.weights1 * inputs + obj.bias1);
            hidden2_output = obj.sigmoid(obj.weights2 * hidden1_output + obj.bias2);
            output = obj.sigmoid(obj.weights3 * hidden2_output + obj.bias3);
        end
        
        function output = sigmoid(~, x)
            output = 1 ./ (1 + exp(-x));
        end
    end
end
