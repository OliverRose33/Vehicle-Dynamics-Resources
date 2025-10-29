classdef WeightDistribution
    properties
        Weight (1,1) string
        Gravity (1,1) int8
        XWeightPercentage (1,1) string
        FWD (1,1) string
        LWD (1,1) string
    end

    methods
        function obj=WeightDistribution(Variables)

            arguments
                Variables.Weight=100;
                Variables.Gravity=9.81;
                Variables.XWeightPercentage='50%';
                Variables.FWD='50%';
                Variables.LWD='50%';
            end

            obj.Weight=Variables.Weight;
            obj.Gravity=Variables.Gravity;
            obj.XWeightPercentage=Variables.XWeightPercentage;
            obj.FWD=Variables.FWD;
            obj.LWD=Variables.LWD;


        end
    end

   
end