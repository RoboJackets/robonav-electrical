function rotMat = so2(theta)
% so2 - compose rotation matrix
%
% Syntax: rotMat = so2(theta)
%
% Composes a 2D orthogonal rotation matrix

rotMat = [cos(theta), -sin(theta);...
          sin(theta), cos(theta)];
end