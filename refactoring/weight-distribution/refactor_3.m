%% Refactor 3 - Break Up Calculations Into Logical Steps

% This refactor makes it easier to understand the maths behind the code.
% Large calculations can be difficult to follow, so we can split them
% into smaller, digestible chunks.

totalMass = 600;
wheelbase = 1535;
originalCoGPosition = wheelbase / 2;
accumulatorMass = 150;
newCoGPosition = zeros;
accumulatorPositionDelta = 1:100;

for r =  accumulatorPositionDelta

    accumulatorCoGPosition = originalCoGPosition + r;
    accumulatorMoment = accumulatorMass * accumulatorCoGPosition;
    overallMoment = totalMass * originalCoGPosition;

    newCoGPosition(r) = (accumulatorMoment + overallMoment) ...
        / (totalMass + accumulatorMass);

end

frontWeightDistribution = (1  - (newCoGPosition / wheelbase)) * 100;

plot(accumulatorPositionDelta, newCoGPosition, "-")
plot(accumulatorPositionDelta, frontWeightDistribution, "-")