function mat = se2(d, theta)
% se2 - compose transformation matrix
%
% Syntax: rotMat = se2(theta)
%
% Composes a 2D transformation rotation matrix

mat = [so2(theta), d; 0,0,1];

end
