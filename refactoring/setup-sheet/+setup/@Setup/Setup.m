classdef Setup

    properties
        Info (1,1) setup.Info
        Driver (1,1) setup.Driver
        RaceInfo (1,1) setup.RaceInformation
        Tyres (1,1) string
        Chassis (1,1) string
        Differential (1,1) setup.Differential
        Brakes (1,1) setup.Brakes
        AccuConfig (1,1) string
        Cooling (1,1) string
        SteeringRack (1,1) string
        GearRatios (1,1) setup.GearRatios
        Aero (1,1) setup.Aero
        Tires (1,4) setup.TireSetup
        Suspension (1,4) setup.Suspension
        WeightDistribution (1,1) setup.WeightDistribution
        Chassisbalance (1,1) setup.Chassisbalance
    end

    methods
        obj = readSetupSheet(obj, filename)
        writeSetupSheet(obj, filename)
    end

end