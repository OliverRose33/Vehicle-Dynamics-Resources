%% Refactor 8 - Data Visualisation

% Now that the hard work of writing the code is done,
% the finishing touch is improving the visualisation of the data.

% Add titles, labels and units to improve readability.
% Turn on the grid to allow values to be inspected visually.

% Calling the figure() function creates a new window,
% allowing the function to be called multiple times
% without overwriting the existing graph.

totalMass = 600;
partMass = 150;
deltaPosition = -100:100;

deltaCOM = calculateCOMDelta(totalMass, partMass, deltaPosition);
deltaFWD = calculateFWDDelta(deltaCOM);

ax = axes();

plot(ax, deltaPosition, deltaFWD * 100, "-")
title(ax, "Part Position vs Front Weight Distribution")
xlabel(ax, "Change in Part Position")
xtickformat(ax, "%.0f mm")
ylabel(ax, "Change in Front Weight Distribution")
ytickformat(ax, "%.2f%%")
grid(ax, "on")


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