%% Planning manipulator using Jacobian
% In here we attempt to plan a manipulator given a desired trajectory of
% the end effector. 

addpath(genpath('../'))

%% Visualizating the Trajectory of the end-effector
% We define the end-effector trajectory as
% x = 2 - 0.5sin(t), y = 0.5cos(t) - 0.5
% The following code has been provided for visualization of the trajectory
% and an initial position of the manipulator
t = linspace(0, 2 * pi);
x = 2 - 0.5 * sin(t);
y = 0.5 * cos(t) - 0.5;
plot(x, y);
hold on;

theta_0 = [0.5890, -1.5741,0.9851];
xlim([-0.5,2.5]);
ylim([-1.5,1.5]);
arm1(theta_0);

%% What you need to do:
% First calculate the end-effector jacobian of the manipulator arm in
% arm1Jaco.m, then fillout theta_dot.m in the way that satisfies the
% equation for theta_dot. 
% 
% After that, directly running this section should generate a funky
% animation that shows the manipulator loop around the circular
% trajectory. An additional plot will show how each joint changes over
% time.

figure;
t = linspace(0, 2 * pi);
x = 2 - 0.5 * sin(t);
y = 0.5 * cos(t) - 0.5;
plot(x, y);
hold on;

theta_0 = [0.5890, -1.5741,0.9851];
xlim([-0.5,2.5]);
ylim([-1.5,1.5]);
arm1(theta_0);
[t1, thetas] = ode45(@theta_dot, t, theta_0);

hold on;
for i = 1:15:100
    arm1(thetas(i, :));
    hold on;
    pause(0.5);
end

%%
figure;
plot(thetas);
ylim([-pi, pi]);
legend('Theta1', 'Theta2', 'Theta3');
xlabel('Time')