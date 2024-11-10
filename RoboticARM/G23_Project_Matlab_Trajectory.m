% Define waypoints based on provided joint angles
waypoints = [
    7.2569, 7.8721, -15.2415, -180.0000, -97.3694, -89.9373;
    7.2569, 7.2569, -172.7431, -172.7431, 7.2569, -172.7431;
    7.8721, 7.8721, -23.0041, -23.0041, 7.8721, -23.0041;
    -15.2415, -15.2415, -134.7360, -134.7360, -15.2415, -134.7360;
    -180.0000, 0.0000, -180.0000, 0.0000, 180.0000, 180.0000;
    -97.3694, 97.3694, 112.2599, -112.2599, -97.3694, 112.2599;
    -89.9373, 90.0627, 90.0627, -89.9373, -89.9373, 90.0627;
    10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000;
    0.0000, 194.7387, 209.6293, 180.0000, 360.0000, 360.0000
];

% Time vector (assuming 1 second between each waypoint)
t = 0:size(waypoints, 1) - 1;

% Generate trajectory using spline interpolation
tq = 0:0.1:t(end);
trajectory = zeros(numel(tq), 6);
for i = 1:6
    trajectory(:,i) = spline(t, waypoints(:,i), tq);
end

% Plot trajectory
figure;
plot3(trajectory(:,1), trajectory(:,2), trajectory(:,3), 'b-');
title('Robotic Arm Trajectory');
xlabel('Joint 1 Angle (degrees)');
ylabel('Joint 2 Angle (degrees)');
zlabel('Joint 3 Angle (degrees)');
grid on;
