% Define DH parameters for ABB IRB 1200-7/0.7
L(1) = Link('d', 399, 'a', 0, 'alpha', -pi/2); % Link 1
L(2) = Link('d', 0, 'a', 350, 'alpha', 0);         % Link 2
L(3) = Link('d', 0, 'a', 42, 'alpha', -pi/2);      % Link 3
L(4) = Link('d', 351, 'a', 0, 'alpha', pi/2);       % Link 4
L(5) = Link('d', 0, 'a', 0, 'alpha', -pi/2);          % Link 5
L(6) = Link('d', 212, 'a', 0, 'alpha', 0);          % Link 6

% Create the robot model
IRB1200 = SerialLink(L, 'name', 'ABB IRB 1200-7/0.7');

% Input specific joint angles (in radians)
% theta_1 = 72.72 * pi/180;
% theta_2 = (-90+51.72) * pi/180;
% theta_3 = (11.33) * pi/180;
% theta_4 = 0.00 * pi/180;
% theta_5 = 26.95 * pi/180;% Example value
% theta_6 = 252.72 * pi/180; % Example value

% Combine joint angles into a vector

%q = [theta_1 theta_2 theta_3 theta_4 theta_5 theta_6 ];
q=([72.930000, -44.330000, 10.040000, 0.000000, 27.680000, 250.240000]+[0 -90 0 0 0 0])*pi/180;
q_left = [1.5721,   -0.9905,   -0.5722,    0.1082,    0.0685,        0];
q_center = [0.0000,   -0.9666,    0.0947,    0.0000,    0.0343 ,        0];
q_right = [-1.5731 ,  -1.1129,   -0.5105,   -0.1243,    0.1036,         0];

% Calculate forward kinematics
T = IRB1200.fkine(q);

% Extract the end-effector position (x, y, z)
position = T.t;  % Extracts the translational component

% Display the end-effector position
disp('End-Effector Position (x, y, z):');
disp(position');

% Plot the robot arm with the given joint angles
figure;
IRB1200.plot(q);

% Optionally, to show the workspace more clearly
% set the axis limits to fit the robot's range of motion
axis([-1000 1000 -1000 1000 0 1000]); % Adjust these limits according to your setup
grid on;
title('ABB IRB 1200-7/0.7 Robot Arm');