classdef Setup

    properties
        DriverName (1,1) string
        DriverMass (1,1) double
    end

    methods
        function obj = Setup(spreadsheet)
            reader = SpreadsheetReader(spreadsheet);
            obj.DriverName = reader.D10;
            obj.DriverMass = reader.F10;
        end
    end

end