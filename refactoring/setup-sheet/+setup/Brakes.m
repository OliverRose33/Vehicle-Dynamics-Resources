classdef Brakes
    properties
        FrontMC (1,1) string
        RearMC (1,1) string
        FrontPads (1,1) string
        RearPads (1,1) string
    end
    
    methods

        function obj=Brakes(values)

            arguments
                values.FrontMC="X mm"
                values.RearMC="X mm"
                values.FrontPads="Spec"
                values.RearPads="Spec"%not sure
            end

            obj.FrontMC = values.FrontMC;
            obj.RearMC = values.RearMC;
            obj.FrontPads = values.FrontPads;
            obj.RearPads = values.RearPads;
            
        end
    end

  


end