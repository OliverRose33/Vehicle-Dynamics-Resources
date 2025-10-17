%% Refactor 5 - Check Logic

% Now that we have made the code easier to read and understand,
% we can check what logic it is actually implementing.

% I always like to draw diagrams and write out the maths with pen and paper,
% or on a whiteboard, before I even start writing any code.

% We can also now generalise the logic to any part of the car.

totalMass = 600;
wheelbase = 1535;
partMass = 150;
deltaPosition = -100:100;

deltaCOM = (partMass / totalMass) * deltaPosition;
deltaFWD = - deltaCOM / wheelbase;

plot(deltaPosition, deltaFWD, "-")