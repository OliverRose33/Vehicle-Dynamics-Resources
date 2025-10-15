%% Refactor 1 - Variable Names

% This refactor makes it easier to follow what the code is doing

% Use descriptive variable names
% By convention, use camelCase for variable names

% All constants should be named and declared at the start.

totalMass = 600;
wheelbase = 1535;
originalCoGPosition = wheelbase/2;
accumulatorMass = 150;
newCoGPosition = zeros;
accumulatorPositionDelta = 1:100;

for r =  accumulatorPositionDelta

    newCoGPosition(r) = ((accumulatorMass*(originalCoGPosition+r)) + (totalMass*originalCoGPosition))/(totalMass+accumulatorMass);

end

frontWeightDistribution = (1  - (newCoGPosition/wheelbase))*100;

plot(accumulatorPositionDelta,newCoGPosition,"-")
plot(accumulatorPositionDelta,frontWeightDistribution,"-")