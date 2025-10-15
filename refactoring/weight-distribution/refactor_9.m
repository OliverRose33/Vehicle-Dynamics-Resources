%% Refactor 9 - Improve Visualisation

% Currently, this graph is only a single straight line.
% With some changes, we can convey more information.

% The function "hold(ax, "on")" stops the graph from being cleared
% when new information is plotted. 

totalMass = 300;
partMass = [1, 2, 5, 10, 20];
deltaPosition = -100:100;

fig = figure(WindowState = "maximized");
ax = axes(fig);
hold(ax, "on");

for i = 1:length(partMass)

    deltaFWD = calculateFWDDelta( ...
        totalMass = totalMass, ...
        partMass = partMass(i), ...
        deltaPosition = deltaPosition);
        
    plot(ax, deltaPosition, deltaFWD * 100, "-")

end

title(ax, "Part Position vs Front Weight Distribution")
xlabel(ax, "Change in Part Position")
xtickformat(ax, "%.0f mm")
ylabel(ax, "Change in Front Weight Distribution")
ytickformat(ax, "%.2f%%")
grid(ax, "on")

leg = legend(ax, compose("%.0f kg", partMass));
title(leg, "Part Mass")


    
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