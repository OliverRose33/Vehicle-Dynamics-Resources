%% Refactor 2 - Spacing and Line Breaks

% This refactor is about improving readability

% Keep lines to a maximum of 80 characters.
% Use line breaks to split up long lines.
% In MATLAB, this is done using an ellipsis "..."

% This is more personal preference, but adding spaces
% around operators (+, -, *, /) makes things easier to read.
% Spaces between function arguments are also recommended.

totalMass = 600;
wheelbase = 1535;
originalCoGPosition = wheelbase / 2;
accumulatorMass = 150;
newCoGPosition = zeros;
accumulatorPositionDelta = 1:100;

for r =  accumulatorPositionDelta

    newCoGPosition(r) = ...
        ((accumulatorMass * (originalCoGPosition + r)) ...
            + (totalMass * originalCoGPosition)) ...
        / (totalMass + accumulatorMass);

end

frontWeightDistribution = (1  - (newCoGPosition / wheelbase)) * 100;

plot(accumulatorPositionDelta, newCoGPosition, "-")
plot(accumulatorPositionDelta, frontWeightDistribution, "-")