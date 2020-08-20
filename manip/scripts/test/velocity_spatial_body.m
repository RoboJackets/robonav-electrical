%% Tranforming between spatial and body velocities.
% This section concerns with the transformation between body velocities and spatial velocities. 
% Please understand that this is typically a more abstract concept and bear with us while we navigate
% through this concept

addpath(genpath('../'))

%% Preparing for basic math
% First we need to get a number of tools ready. Please first fill out hat.m, vee.m and make sure they pass the
% following tests

a = rand(3, 1);
assert(all(a - vee(hat(a)) < 1e-3))

%% Applying the maths
% Consider the following situation. Base frame A and body frame B are linked by a [3;5] pi/3 transformation.
% Body frame is the only observer and notices that it has a linear velocity
% of [3;0] and angular velocity of 0.5
% Find the spatial velocity.
% 
% 
base_tf = se2([3;5], pi/3);
kxi_body = [3;0;0.5];
kxi_spatial = adj(base_tf, kxi_body);
assert(all(kxi_spatial - [0.8776, -0.4794, 4.2644; 0.4794, 0.8776, 1.7719; 0,0,1] < 1e-3, 'all'))

% The above result should returns a 3x3 matrix that the rotation matrix
% actually denotes the angular velocity and displacement component
% denotes linear velocity
