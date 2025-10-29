classdef GearRatios
    properties
        FrontSprocketToothCount(1,1) int8
        RearSprocketToothCount (1,1) int8
        FDR (1,1) string
    end

    methods
        function obj=GearRatios(Gear)

            arguments
            Gear.FrontSprocketToothCount=0
            Gear.RearSprocketToothCount=0
            Gear.FDR="Front/Rear"
            end

            obj.FrontSprocketToothCount=Gear.FrontSprocketToothCount;
            obj.RearSprocketToothCount=Gear.RearSprocketToothCount;
            obj.FDR=Gear.FDR;
        end
    end
end