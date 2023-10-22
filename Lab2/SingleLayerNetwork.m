classdef SingleLayerNetwork
    properties
        inputSize = 2;
        outputSize = 1;
        weights;
        bias;
    end
    
    methods
        function obj = SingleLayerNetwork()
            obj.weights = rand(1, obj.inputSize);
            obj.bias = rand();
        end
        
        function output = forward(obj, inputs)
            output = sum(inputs .* obj.weights) + obj.bias;
        end
    end
end