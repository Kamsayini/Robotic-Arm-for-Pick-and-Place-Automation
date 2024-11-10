clc
clear
close all
    % Initialize RoboDK connection
addpath('C:\RoboDK\RoboDK\Matlab')
% Generate a Robolink object RDK. This object interfaces with RoboDK.
RDK = Robolink;

% Define the path to your specific RDK file as a character array
rdkFilePath = 'E:\6th sem\EC6090 Robotics and Automation\Project\G23_Project.rdk'; % Use single quotes for character array

% Load your RDK file
station = RDK.AddFile(rdkFilePath);

% Check if the station was successfully loaded
if ~station.Valid()
    RDK.ShowMessage(sprintf('Failed to load the RDK file at path:<br>%s.', rdkFilePath));
    return
end

% Retrieve the robot by its name or type
robotName = 'ABB CRB 1300-11/0.9'; 
robot = RDK.Item(robotName, RDK.ITEM_TYPE_ROBOT);

% Check if the robot item was found
if ~robot.Valid()
    fprintf('Robot "%s" not found in the station.\n', robotName);
    return
end

% Get the current robot joints
fprintf('Current robot joints:\n');
joints = robot.Joints();
disp(joints);

% Get the current position of the TCP with respect to the reference frame
fprintf('Calculated pose for current joints:\n');
H_tcp_wrt_frame = robot.SolveFK(joints);
disp(H_tcp_wrt_frame);

% Calculate the joints to reach this position (should be the same as joints)
fprintf('Calculated robot joints from pose:\n');
joints2 = robot.SolveIK(H_tcp_wrt_frame);
disp(joints2);

% Calculate all solutions
fprintf('All solutions available for the selected position:\n');
joints3_all = robot.SolveIK_All(H_tcp_wrt_frame);
disp(joints3_all);

% Show the sequence in the slider bar in RoboDK
RDK.ShowSequence(joints3_all);

pause(1);
% Make joints 4 the solution to reach the target off by 100 mm in Z
joints4 = robot.SolveIK(H_tcp_wrt_frame * transl(0, 0, -100));
% Set the robot at the new position calculated
robot.setJoints(joints4);


