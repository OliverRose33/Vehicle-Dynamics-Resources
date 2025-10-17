%% Refactor 9 - Improve Visualisation

% Currently, this graph is only a single straight line.
% With some changes, we can convey more information.

% The function "hold(ax, "on")" stops the graph from being cleared
% when new information is plotted. 

totalMass = 300;
partMass = [1, 2, 5, 10, 20];
deltaPosition = -100:100;


ax = axes();
hold(ax, "on");

for i = 1:length(partMass)
    deltaCOM = calculateCOMDelta(totalMass, partMass(i), deltaPosition);
    deltaFWD = calculateFWDDelta(deltaCOM);
    plot(ax, deltaPosition, deltaFWD * 100, "-")
end

title(ax, "Part Position vs Front Weight Distribution")
subtitle(ax, sprintf("Total mass = %.0f kg", totalMass))
xlabel(ax, "Change in Part Position")
xtickformat(ax, "%.0f mm")
ylabel(ax, "Change in Front Weight Distribution")
ytickformat(ax, "%.2f%%")
grid(ax, "on")

leg = legend(ax, compose("%.0f kg", partMass));
title(leg, "Part Mass")


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