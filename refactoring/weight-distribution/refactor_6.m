%% Refactor 6 - Use Functions to Organise Code

% Functions are a great way to organise code.
% They make it clear what the inputs and outputs are,
% and can make logic easier to read.

% Note that functions declared inside a script should be at the very end,
% or they can cause problems with older versions of MATLAB.

totalMass = 600;
wheelbase = 1535;
partMass = 150;
deltaPosition = -100:100;

deltaFWD = calculateFWDDelta(totalMass, partMass, wheelbase, deltaPosition);

plot(deltaPosition, deltaFWD, "-")


    
function deltaFWD = calculateFWDDelta( ...
        totalMass, partMass, wheelbase, deltaPosition)
        
    deltaFWD = - (partMass / totalMass) * (deltaPosition / wheelbase);

end