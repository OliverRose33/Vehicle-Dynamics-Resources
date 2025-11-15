classdef Chassisbalance

    properties
        MINRH (1,1) string
        Rake (1,1) string
        LWD (1,1) string
    end

    methods
        function obj=Chassisbalance(Chassis)

            arguments
                Chassis.MINRH=0;
                Chassis.Rake='0%';
                Chassis.LWD='0%';
            end
            obj.MINRH = Chassis.MINRH;
            obj.Rake = Chassis.Rake;
            obj.LWD = Chassis.LWD;
        end
    end

        
end