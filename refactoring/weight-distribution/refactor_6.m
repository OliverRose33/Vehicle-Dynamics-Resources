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

deltaCOM = calculateCOMDelta(totalMass, partMass, deltaPosition);
deltaFWD = calculateFWDDelta(deltaCOM, wheelbase);

plot(deltaPosition, deltaFWD, "-")


function deltaCOM = calculateCOMDelta(totalMass, partMass, deltaPosition)
    deltaCOM = (partMass / totalMass) * deltaPosition;
end

function deltaFWD = calculateFWDDelta(deltaCOM, wheelbase)
    deltaFWD = - deltaCOM / wheelbase;
end