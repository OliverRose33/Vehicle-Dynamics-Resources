%% Refactor 7 - Add Arguments Block

% Functions can be enhanced by using the arguments block.
% This allows you to create named arguments,
% and set limits on the values of arguments.

% Using named arguments improves readability when functions are called,
% and also allows the arguments to be input in any order.

% Default values can be set for arguments.
% These are used if no value is provided when the function is called.

deltaPosition = -100:100;

deltaFWD = calculateFWDDelta( ...
    totalMass = 600, ...
    partMass = 150, ...
    deltaPosition = deltaPosition);
    
plot(deltaPosition, deltaFWD, "-")


    
function deltaFWD = calculateFWDDelta(options)
        
    arguments
        options.totalMass (1,1) double {mustBePositive, mustBeFinite}
        options.partMass (1,1) double {mustBePositive, mustBeFinite}
        options.wheelbase (1,1) double {mustBePositive, mustBeFinite} = 1535
        options.deltaPosition double {mustBeFinite} = -200:200
    end
    
    deltaFWD = - (options.partMass / options.totalMass) ...
        * (options.deltaPosition / options.wheelbase);

end