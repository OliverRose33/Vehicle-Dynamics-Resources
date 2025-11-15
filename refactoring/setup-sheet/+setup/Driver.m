classdef Driver

    properties
        DriverName (1,1) string
        DriverWeight (1,1) string %excel sheet has string but supposed to be a integer 
    end

    methods 
        function obj=Driver(DriverDetails)

            arguments
                DriverDetails.DriverName="Driver1"
                DriverDetails.DriverWeight=0
            end
           
            obj.DriverName=DriverDetails.DriverName;
            obj.DriverWeight=DriverDetails.DriverWeight;
           
        end
    end
end
    