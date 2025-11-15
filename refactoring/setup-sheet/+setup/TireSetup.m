classdef TireSetup
    properties
        ToeAngle (1,1) string
        ToeMMSHM (1,1) string
        CamberAngle (1,1) string
        CamberMMSHM (1,1) int16
        HardpointUF (1,2) int16
        HardpointUR (1,2) int16
        HardpointLF (1,2) int16
        HardpointLR (1,2) int16
        RideHeightAngle (1,1) string
        RideHeightMMSHM (1,1) string
        TempID (1,1) string
        TempCold (1,1) int8
        TempHot (1,1) string
        Temperature (1,1) string
        CornerWeight (1,1) string
    end

    methods 
        function obj=TireSetup(Tire)

            arguments
                Tire.ToeAngle="0°" 
                Tire.ToeMMSHM=0
                Tire.CamberAngle="0°" 
                Tire.CamberMMSHM=0 
                Tire.HardpointUF=[0,0] 
                Tire.HardpointUR=[0,0] 
                Tire.HardpointLF=[0,0]  
                Tire.HardpointLR=[0,0] 
                Tire.RideHeightAngle="0°"  
                Tire.RideHeightMMSHM=0  
                Tire.TempID=0  
                Tire.TempCold=0 
                Tire.TempHot="0" %set to 0 not sure default value
                Tire.Temperature="Outside Temperature"
                Tire.CornerWeight="0" 
            end
            obj.ToeAngle = Tire.ToeAngle;
            obj.ToeMMSHM = Tire.ToeMMSHM;
            obj.CamberAngle = Tire.CamberAngle;
            obj.CamberMMSHM = Tire.CamberMMSHM;
            obj.HardpointUF = Tire.HardpointUF;
            obj.HardpointUR = Tire.HardpointUR;
            obj.HardpointLF = Tire.HardpointLF;
            obj.HardpointLR = Tire.HardpointLR;
            obj.RideHeightAngle = Tire.RideHeightAngle;
            obj.RideHeightMMSHM = Tire.RideHeightMMSHM;
            obj.TempID = Tire.TempID;
            obj.TempCold = Tire.TempCold;
            obj.TempHot = Tire.TempHot;
            obj.Temperature = Tire.Temperature;
            obj.CornerWeight = Tire.CornerWeight;
        end

       
    end
end
