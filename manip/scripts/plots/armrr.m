function armrr(thetas, lengths)
% arm1 - plots manipulator1 
%
% Syntax: arm1(array_of_angle, array_of_armlength)
%
% Plot a robotic arm, make this the three revolute joint manipulator
% theta 1 is at origin, default arm length is [1.5, 1, 0.2];

    if ( (nargin < 2) )
        lengths = [1.5, 1];
    end

    thetas_deg = thetas / pi * 180;
    rot1 = rotx(thetas_deg(1));
    rot2 = rotx(thetas_deg(2));
    g1 = [rot1(2:3, 2:3), [0;0]; 0,0,1];
    g2 = [rot2(2:3, 2:3), [lengths(1); 0]; 0,0,1;];
    g3 = [eye(2), [lengths(2) - 0.1; 0]; 0,0,1;];

    p1 = [0;0];
    p2 = g1 * g2;
    p3 = p2 * g3;

    joint_vec = [p1(1), p2(1,3), p3(1,3);...
                p1(2), p2(2,3), p3(2,3)];
    plot(joint_vec(1, :), joint_vec(2,:), 'g', 'LineWidth', 4);
    hold on;
    plot(joint_vec(1, 1:end-1), joint_vec(2, 1:end-1), 'ok', 'MarkerSize', 10, 'LineWidth', 3);

    ef = [0.2, 0.1, 0, 0.1, 0.2, 0.1;...
          0.07, 0.07, 0, -0.07, -0.07, 0];
    ef = p3(1:2, 1:2) * ef;
    ef = p3(1:2, 3) + ef;
    hold on;
    plot(ef(1, end), ef(2, end), 'x', ...
        ef(1, 1:end-1), ef(2, 1:end-1), 'g', 'LineWidth', 6);
    hold on;
    hold off;
    axis equal;
end