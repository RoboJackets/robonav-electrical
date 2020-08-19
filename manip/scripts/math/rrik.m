function thetas = rrik(ef, rr_len)
% rrik - Inverse kinematics of a two joint manipulator
%
% Syntax: thetas = rrik(ef)
%
% Calculate joint angles based on end-effector configuration

if ( (nargin < 2) )
    rr_len = [1.5, 1];
end

if numel(ef) == 9
    coor = ef(1:2, 3);
else
    coor = ef;
end
r = norm(coor);
alpha_p = acos((sumsqr(rr_len)  - r^2) / (2 * prod(rr_len)));
beta_p = acos((r^2 + rr_len(1)^2 - rr_len(2) ^ 2) / (2 * rr_len(1) * r));
thetas = [atan2(coor(2), coor(1)) - beta_p; pi - alpha_p];

end