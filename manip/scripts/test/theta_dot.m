function theta_dot = theta_dot(t, thetas)
    theta_dot = pinv(arm1Jaco(thetas)) * [-0.5 * cos(t); -0.5 * sin(t)];
end
