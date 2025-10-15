%% Refactor 8 - Data Visualisation

% Now that the hard work of writing the code is done,
% the finishing touch is improving the visualisation of the data.

% Add titles, labels and units to improve readability.
% Turn on the grid to allow values to be inspected visually.

% Calling the figure() function creates a new window,
% allowing the function to be called multiple times
% without overwriting the existing graph.

deltaPosition = -100:100;

deltaFWD = calculateFWDDelta( ...
    totalMass = 600, ...
    partMass = 150, ...
    deltaPosition = deltaPosition);

fig = figure(WindowState = "maximized");
ax = axes(fig);

plot(ax, deltaPosition, deltaFWD * 100, "-")
title(ax, "Part Position vs Front Weight Distribution")
xlabel(ax, "Change in Part Position")
xtickformat(ax, "%.0f mm")
ylabel(ax, "Change in Front Weight Distribution")
ytickformat(ax, "%.2f%%")
grid(ax, "on")


    
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