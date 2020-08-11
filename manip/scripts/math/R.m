function rotMat = R(theta)
% R - compose rotation matrix
%
% Syntax: rotMat = R(theta)
%
% Composes a 2D orthogonal rotation matrix

rotMat = [cos(theta), -sin(theta);...
          sin(theta), cos(theta)];
end