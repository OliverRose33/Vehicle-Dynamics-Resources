%% Refactor 4 - Use Vectors and Matrices

% MATLAB is highly optimised for matrix and vector operations.
% We can take advantage of this to eliminate a lot of for loops.

totalMass = 600;
wheelbase = 1535;
originalCoGPosition = wheelbase / 2;
accumulatorMass = 150;
accumulatorPositionDelta = -100:100; % We can now use negative positions

accumulatorCoGPosition = originalCoGPosition + accumulatorPositionDelta;
accumulatorMoment = accumulatorMass * accumulatorCoGPosition;
overallMoment = totalMass * originalCoGPosition;

newCoGPosition = (accumulatorMoment + overallMoment) ...
    / (totalMass + accumulatorMass);

frontWeightDistribution = (1  - (newCoGPosition / wheelbase)) * 100;

plot(accumulatorPositionDelta, newCoGPosition, "-")
plot(accumulatorPositionDelta, frontWeightDistribution, "-")