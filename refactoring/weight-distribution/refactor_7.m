%% Refactor 7 - Add Arguments Block

% Functions can be enhanced by using the arguments block.
% This allows you to create named arguments,
% and set limits on the values of arguments.

% Using named arguments improves readability when functions are called,
% and also allows the arguments to be input in any order.

% Default values can be set for arguments.
% These are used if no value is provided when the function is called.

totalMass = 600;
partMass = 150;
deltaPosition = -100:100;

deltaCOM = calculateCOMDelta(totalMass, partMass, deltaPosition);
deltaFWD = calculateFWDDelta(deltaCOM);

plot(deltaPosition, deltaFWD, "-")


function deltaCOM = calculateCOMDelta(totalMass, partMass, deltaPosition)

    arguments (Input)
        totalMass (1,1) double {mustBePositive, mustBeFinite}
        partMass (1,1) double {mustBePositive, mustBeFinite}
        deltaPosition double {mustBeFinite} = -200:200
    end
    
    deltaCOM = (partMass / totalMass) * deltaPosition;

end

function deltaFWD = calculateFWDDelta(deltaCOM, wheelbase)

    arguments (Input)
        deltaCOM double {mustBeFinite}
        wheelbase (1,1) double {mustBePositive, mustBeFinite} = 1535
    end

    deltaFWD = - deltaCOM / wheelbase;

end