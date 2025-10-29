classdef RaceInformation

    properties
        Circuit (1,1) string
        LapDist (1,1) string %int but str on setupsheet

    end 

    methods
        function obj=RaceInformation(Race)

            arguments
            Race.Circuit="Circuit 1"
            Race.LapDist="Default Distance"%better name
            end

            obj.Circuit=Race.Circuit;
            obj.LapDist=Race.LapDist;


        end


    end



end