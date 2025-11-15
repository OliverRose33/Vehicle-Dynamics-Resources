classdef Aero

    properties
        FrontWing (1,1) string
        SideWing (1,1) string
        RearWing (1,1) string
    end
    methods
        function obj=Aero(Wings)

            arguments
                Wings.FrontWing="OFF"
                Wings.SideWing="OFF"
                Wings.RearWing="OFF"
            end

            obj.FrontWing = Wings.FrontWing;
            obj.SideWing = Wings.SideWing;
            obj.RearWing = Wings.RearWing;
        
        end
    end
end