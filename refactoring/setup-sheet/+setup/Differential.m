classdef Differential
    
    properties
        Diff (1,1) string
        Ramps (1,1) string
        PreLoad (1,1) string
    end
    
    methods

        function obj=Differential(diff)
            
            arguments
                diff.Diff="manufacturer"
                diff.Ramps="acc/dec"
                diff.PreLoad="X Nm (measured)"
            end
            obj.Diff=diff.Diff;
            obj.Ramps=diff.Ramps;
            obj.PreLoad=diff.PreLoad;

        end
    end
end



