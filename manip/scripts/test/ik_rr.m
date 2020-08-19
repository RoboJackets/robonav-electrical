%% Doing inverse kinematics
% In this script we intend in introducing one basic example of inverse kinematics. General solution to tnverse kinematics in real world
% are very complicated problems and they often aren't as straight forward as this example shows

addpath(genpath("../"))

%% Filling out IK function
% We will start from filling out this function rrik.m, that is a two revolute joint manipulator, remember to pass 
% an argument for link length.
% 
% Verify that your function works for the following end-effector configuration.
% Verify using the plotting function armrr.m 

base = se2([0; 0], 0);
ef = se2([1/2; sqrt(3)/2], 0);
plotFrame(base)
plotFrame(ef);
hold on;
thetas = rrik(ef);
% You need to implement this function, takes in either a 3x3 SE2 matrix or a 2 x 1 coordinate vector
% returns a list of joint angles.
armrr(thetas);

%% Inverse kinematics Planning
% One techinque we can use for inverse kinematics is that given a trajectory of end-effectors, we can extract a number
% of points along those trajectories, calculate inverse kinematics for each point and change joint angles accordingly 
% Given  x = 1 - 0.25 * sin(t), y = 0.25 * cos(t) - 0.5

t = linspace(0, 2 * pi);
x = 1 - 0.25 * sin(t);
y = 0.25 * cos(t) - 0.5;
plot(x, y);
axis equal;
hold on;

for i=1:10:100
   armrr(rrik([x(i); y(i)]));
   hold on;
   pause(0.5);
end
