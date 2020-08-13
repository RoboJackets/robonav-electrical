function J = arm1Jaco(thetas, l)
% arm1Jaco - Jacobian of manipulator 1
%
% Syntax: J = arm1Jaco(array_of_angle)
%
% Calculate jacobian matrix between end-effector configuration in spatial
% frame and joint angle, make this the three revolute joint manipulator

    if ( (nargin < 2) )
        l = [1.5,1,0.2];
    end   
    
    total = sum(thetas);
    
    J = [-l(2) * sin(thetas(1) + thetas(2)) - l(1) * sin(thetas(1)) - l(3) * sin(total),...
        -l(2) * sin(thetas(1) + thetas(2)) - l(3) * sin(total), -l(3) * sin(total);...
        l(2) * cos(thetas(1) + thetas(2)) + l(1) * cos(thetas(1)) + l(3) * cos(total),...
        l(2) * cos(thetas(1) + thetas(2)) + l(3) * cos(total),  l(3) * cos(total)
        ];
end