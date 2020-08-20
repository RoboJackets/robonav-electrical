%% Understanding Coordinate frames
% This script is intended for the first section of the manipulation
% introduction. We plan to go over the representation of coordiante systems
% 
% Using Run section will make your life a lot easier
% 
addpath(genpath('../'))

%% SE2 and SO2 Representation
% Fillout se2.m and so2.m so that the following assert passes

assert(all((so2(pi/6) - ...
    [sqrt(3)/2, -0.5; 0.5, sqrt(3)/2]) < 1e-4, ...
    'all'))
assert(all((se2([3; 5], pi/8) - ...
    [0.9239, -0.3827, 3; 0.3827, 0.9239, 5; 0, 0, 1]) < 1e-4,...
    'all'))

%% Using Coordinate Frames
% Now that we have the coordinate frames, lets put the frames to use
% First uncommment the following line to use a lib provided to use for
% plotting frames
figure;
plotFrame(se2([0; 0], 0))
plotFrame(se2([3; 5], pi/8));

%%
% Now given we have Frame A, B and Frame C. Frame A is the base frame,
% Frame B's origin is attached at [3; 5] with a 60 degree rotation in the
% base frame, Frame C is attached at point [-5, 8] with no rotation in
% frame B. 
% 1. Use the tools provided (se2, so2) and understanding from the 
%    PDF to determine Frame C's coordiante in the base frame A.
% 2. Represent C's frame using matrix and plot using plotFrame function
%    so that they coincide with Reference C frame
figure;
plotFrame(eye(3), 'Base');
plotFrame([0.5000, -0.8660, -6.4282; 0.8660, 0.5000, 4.6699; 0,0,1], 'Reference C', 'g');
% Your code here
% plotFrame(se2(args), 'C', 'b');

%% 
% Given Frame A, B, C. A is the base frame. Frame C is fixed at point [2;4]
% with pi/2 rotation in Frame B. Frame C can be observed to be at point 
% [3;7] and a -pi/7 rotation in base A. 
% 1. Determine Frame B's location in Frame A
% 2. Plot Frame B so that it coincide with the following plot

figure;
plotFrame(eye(3), 'Base');
plotFrame([-0.4339, 0.9010, 0.2639; -0.9010, -0.4339, 10.5375; 0, 0, 1], 'Reference B', 'g');
% Your code here
% plotFrame(se2(args), 'B', 'b')
