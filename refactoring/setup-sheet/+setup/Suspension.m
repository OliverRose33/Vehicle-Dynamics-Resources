classdef Suspension
    properties
        Spring (1,1) string %data type? had int but not work
        OpenLSC (1,1) string
        OpenLSR (1,1) string
        OpenHSC (1,1) string
        OpenHSR (1,1) string

    end

    methods 
        function obj=Suspension(DampSpring)

            arguments
                DampSpring.Spring = 0;
                DampSpring.OpenLSC=0;
                DampSpring.OpenLSR=0;
                DampSpring.OpenHSC=0;
                DampSpring.OpenHSR=0;
            end

        obj.Spring = DampSpring.Spring;
        obj.OpenLSC = DampSpring.OpenLSC;
        obj.OpenLSR = DampSpring.OpenLSR;
        obj.OpenHSC = DampSpring.OpenHSC;
        obj.OpenHSR = DampSpring.OpenHSR;

        end
    end
end