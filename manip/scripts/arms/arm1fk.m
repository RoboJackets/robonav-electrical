function ef = arm1fk(thetas, lengths)
% arm1fk - Forward kinematics of arm1
%
% Syntax: ef = arm1fk(array_of_angle, array_of_armlength)
%
% Calculate end-effector coordinates for manipulator1, make this the three
% revolute joint manipulator

    if ( (nargin < 2) )
        lengths = [1.5,1,0.2];
    end
    
    thetas_deg = thetas / pi * 180;
    rot1 = rotx(thetas_deg(1));
    rot2 = rotx(thetas_deg(2));
    rot3 = rotx(thetas_deg(3));
    g1 = [rot1(2:3, 2:3), [0;0]; 0,0,1];
    g2 = [rot2(2:3, 2:3), [lengths(1); 0]; 0,0,1;];
    g3 = [rot3(2:3, 2:3), [lengths(2); 0]; 0,0,1;];
    g4 = [eye(2), [lengths(3); 0]; 0,0,1;];
    ef = g1 * g2 * g3 * g4;
    
end