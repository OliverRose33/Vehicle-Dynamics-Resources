USMSetupSheet=readcell("24SetupSheet.xlsx");

setup=struct();

%Info better name
setup.Info.Engineer=USMSetupSheet{5,2};
setup.Info.Mechanic=USMSetupSheet{6,2};
setup.Info.IssueNo=USMSetupSheet{5,11};
setup.Info.DateIssued=USMSetupSheet{5,16};

%Driver
setup.Driver.DriverName=USMSetupSheet{9,3};
setup.Driver.DriverWeight=USMSetupSheet{9,5};
%driver weight unit??

%Race information
setup.RaceInfo.Circuit=USMSetupSheet{8,10};
setup.RaceInfo.LapDist=USMSetupSheet{9,10};

%config1 name?
setup.Config1.Tyres=USMSetupSheet{8,16};
setup.Config1.Chassis=USMSetupSheet{9,16};

%Differential
setup.Differential.Diff=USMSetupSheet{11,3};
setup.Differential.Ramps=USMSetupSheet{12,3};
setup.Differential.PreLoad=USMSetupSheet{13,3};

%Brakes
setup.Brakes.FrontMC=USMSetupSheet{12,9};
setup.Brakes.RearMC=USMSetupSheet{12,11};
setup.Brakes.FrontPads=USMSetupSheet{13,9};
setup.Brakes.RearPads=USMSetupSheet{13,11};

%config2 name?
setup.Config2.ACCUconfig=USMSetupSheet{11,16};
setup.Config2.Cooling=USMSetupSheet{12,16};
setup.Config2.Rack=USMSetupSheet{13,16};

%Gear Ratios Name?
setup.Ratios.Denomonator=USMSetupSheet{15,4};
setup.Ratios.Numerator=USMSetupSheet{15,5};
setup.Ratios.FDR=USMSetupSheet{15,6};

%Aero
setup.Aero.FrontWing=USMSetupSheet{18,8};
setup.Aero.SideWing=USMSetupSheet{18,10};
setup.Aero.RearWing=USMSetupSheet{18,12};

%Tires

%Front Left
setup.Tires.FrontLeft.Toe.Deg=USMSetupSheet{22,3};
setup.Tires.FrontLeft.Toe.MMSHM=USMSetupSheet{22,5};

setup.Tires.FrontLeft.Camber.Deg=USMSetupSheet{23,3};
setup.Tires.FrontLeft.Camber.MMSHM=USMSetupSheet{23,5};

setup.Tires.FrontLeft.Hardpoints.UF.Height=USMSetupSheet{25,3};
setup.Tires.FrontLeft.Hardpoints.UF.LongPos=USMSetupSheet{26,3};
setup.Tires.FrontLeft.Hardpoints.UR.Height=USMSetupSheet{25,4};
setup.Tires.FrontLeft.Hardpoints.UR.LongPos=USMSetupSheet{26,3};
setup.Tires.FrontLeft.Hardpoints.LF.Height=USMSetupSheet{25,5};
setup.Tires.FrontLeft.Hardpoints.LF.LongPos=USMSetupSheet{26,5};
setup.Tires.FrontLeft.Hardpoints.LR.Height=USMSetupSheet{25,6};
setup.Tires.FrontLeft.Hardpoints.LR.LongPos=USMSetupSheet{26,5};

setup.Tires.FrontLeft.RideHeight.Deg=USMSetupSheet{27,3};
setup.Tires.FrontLeft.RideHeight.MMSHM=USMSetupSheet{27,5};

setup.Tires.FrontLeft.Temperature.ID=USMSetupSheet{29,3};
setup.Tires.FrontLeft.Temperature.Cold=USMSetupSheet{29,4};
setup.Tires.FrontLeft.Temperature.Hot=USMSetupSheet{29,5};
setup.Tires.FrontLeft.Temperature.Temp=USMSetupSheet{29,6};

setup.Tires.FrontLeft.CornerWeight=USMSetupSheet{30,3};

%Front Right
setup.Tires.FrontRight.Toe.Deg=USMSetupSheet{22,16};
setup.Tires.FrontRight.Toe.MMSHM=USMSetupSheet{22,18};

setup.Tires.FrontRight.Camber.Deg=USMSetupSheet{23,16};
setup.Tires.FrontRight.Camber.MMSHM=USMSetupSheet{23,18};

setup.Tires.FrontRight.Hardpoints.UF.Height=USMSetupSheet{25,16};
setup.Tires.FrontRight.Hardpoints.UF.LongPos=USMSetupSheet{26,16};
setup.Tires.FrontRight.Hardpoints.UR.Height=USMSetupSheet{25,17};
setup.Tires.FrontRight.Hardpoints.UR.LongPos=USMSetupSheet{26,17};
setup.Tires.FrontRight.Hardpoints.LF.Height=USMSetupSheet{25,18};
setup.Tires.FrontRight.Hardpoints.LF.LongPos=USMSetupSheet{26,18};
setup.Tires.FrontRight.Hardpoints.LR.Height=USMSetupSheet{25,19};
setup.Tires.FrontRight.Hardpoints.LR.LongPos=USMSetupSheet{26,19};

setup.Tires.FrontRight.RideHeight.Deg=USMSetupSheet{27,16};
setup.Tires.FrontRight.RideHeight.MMSHM=USMSetupSheet{27,18};

setup.Tires.FrontRight.Temperature.ID=USMSetupSheet{29,16};
setup.Tires.FrontRight.Temperature.Cold=USMSetupSheet{29,17};
setup.Tires.FrontRight.Temperature.Hot=USMSetupSheet{29,18};
setup.Tires.FrontRight.Temperature.Temp=USMSetupSheet{29,19};

setup.Tires.FrontRight.CornerWeight=USMSetupSheet{30,16};

%Rear Left
setup.Tires.RearLeft.Toe.Deg=USMSetupSheet{40,3};
setup.Tires.RearLeft.Toe.MMSHM=USMSetupSheet{40,5};

setup.Tires.RearLeft.Camber.Deg=USMSetupSheet{41,3};
setup.Tires.RearLeft.Camber.MMSHM=USMSetupSheet{41,5};

setup.Tires.RearLeft.Hardpoints.UF.Height=USMSetupSheet{43,3};
setup.Tires.RearLeft.Hardpoints.UF.Trackrod=USMSetupSheet{44,3};
setup.Tires.RearLeft.Hardpoints.UR.Height=USMSetupSheet{43,4};
setup.Tires.RearLeft.Hardpoints.UR.Trackrod=USMSetupSheet{44,3};
setup.Tires.RearLeft.Hardpoints.LF.Height=USMSetupSheet{43,5};
setup.Tires.RearLeft.Hardpoints.LF.Trackrod=USMSetupSheet{44,3};
setup.Tires.RearLeft.Hardpoints.LR.Height=USMSetupSheet{43,6};
setup.Tires.RearLeft.Hardpoints.LR.Trackrod=USMSetupSheet{44,3};

setup.Tires.RearLeft.RideHeight.Deg=USMSetupSheet{45,3};
setup.Tires.RearLeft.RideHeight.MMSHM=USMSetupSheet{45,5};

setup.Tires.RearLeft.Temperature.ID=USMSetupSheet{47,3};
setup.Tires.RearLeft.Temperature.Cold=USMSetupSheet{47,4};
setup.Tires.RearLeft.Temperature.Hot=USMSetupSheet{47,5};
setup.Tires.RearLeft.Temperature.Temp=USMSetupSheet{47,6};

setup.Tires.RearLeft.CornerWeight=USMSetupSheet{48,3};

%Rear Right
setup.Tires.RearRight.Toe.Deg=USMSetupSheet{40,16};
setup.Tires.RearRight.Toe.MMSHM=USMSetupSheet{40,18};

setup.Tires.RearRight.Camber.Deg=USMSetupSheet{41,16};
setup.Tires.RearRight.Camber.MMSHM=USMSetupSheet{41,18};

setup.Tires.RearRight.Hardpoints.UF.Height=USMSetupSheet{43,16};
setup.Tires.RearRight.Hardpoints.UF.Trackrod=USMSetupSheet{44,16};
setup.Tires.RearRight.Hardpoints.UR.Height=USMSetupSheet{43,17};
setup.Tires.RearRight.Hardpoints.UR.Trackrod=USMSetupSheet{44,16};
setup.Tires.RearRight.Hardpoints.LF.Height=USMSetupSheet{43,18};
setup.Tires.RearRight.Hardpoints.LF.Trackrod=USMSetupSheet{44,16};
setup.Tires.RearRight.Hardpoints.LR.Height=USMSetupSheet{43,19};
setup.Tires.RearRight.Hardpoints.LR.Trackrod=USMSetupSheet{44,16};

setup.Tires.RearRight.RideHeight.Deg=USMSetupSheet{45,16};
setup.Tires.RearRight.RideHeight.MMSHM=USMSetupSheet{45,18};

setup.Tires.RearRight.Temperature.ID=USMSetupSheet{47,16};
setup.Tires.RearRight.Temperature.Cold=USMSetupSheet{47,17};
setup.Tires.RearRight.Temperature.Hot=USMSetupSheet{47,18};
setup.Tires.RearRight.Temperature.Temp=USMSetupSheet{47,19};

setup.Tires.RearRight.CornerWeight=USMSetupSheet{48,16};

%Suspension

%Front
setup.Suspension.Front.Heave.Spring=USMSetupSheet{22,9};
setup.Suspension.Front.Heave.DampOpen.LSC=USMSetupSheet{24,9};
setup.Suspension.Front.Heave.DampOpen.LSR=USMSetupSheet{24,10};
setup.Suspension.Front.Heave.DampOpen.HSC=USMSetupSheet{24,11};
setup.Suspension.Front.Heave.DampOpen.HSR=USMSetupSheet{24,12};

setup.Suspension.Front.Roll.Spring=USMSetupSheet{28,9};
setup.Suspension.Front.Roll.DampOpen.LSC=USMSetupSheet{30,9};
setup.Suspension.Front.Roll.DampOpen.LSR=USMSetupSheet{30,10};
setup.Suspension.Front.Roll.DampOpen.HSC=USMSetupSheet{30,11};
setup.Suspension.Front.Roll.DampOpen.HSR=USMSetupSheet{30,12};

%Rear
setup.Suspension.Rear.Heave.Spring=USMSetupSheet{40,9};
setup.Suspension.Rear.Heave.DampOpen.LSC=USMSetupSheet{42,9};
setup.Suspension.Rear.Heave.DampOpen.LSR=USMSetupSheet{42,10};
setup.Suspension.Rear.Heave.DampOpen.HSC=USMSetupSheet{42,11};
setup.Suspension.Rear.Heave.DampOpen.HSR=USMSetupSheet{42,12};

setup.Suspension.Rear.Roll.Spring=USMSetupSheet{46,9};
setup.Suspension.Rear.Roll.DampOpen.LSC=USMSetupSheet{48,9};
setup.Suspension.Rear.Roll.DampOpen.LSR=USMSetupSheet{48,10};
setup.Suspension.Rear.Roll.DampOpen.HSC=USMSetupSheet{48,11};
setup.Suspension.Rear.Roll.DampOpen.HSR=USMSetupSheet{48,12};

%WeightDistribution
setup.WeightDistribution.Weight=USMSetupSheet{33,3};
setup.WeightDistribution.XWeight.Gravity=USMSetupSheet{34,3};
setup.WeightDistribution.XWeight.Percentage=USMSetupSheet{34,5};
setup.WeightDistribution.FWD=USMSetupSheet{35,3};
setup.WeightDistribution.LWD=USMSetupSheet{36,3};

%ChassisBalance
setup.ChassisBalance.MINRH=USMSetupSheet{33,16};
setup.ChassisBalance.Rake=USMSetupSheet{35,16};
setup.ChassisBalance.LWD=USMSetupSheet{36,16};