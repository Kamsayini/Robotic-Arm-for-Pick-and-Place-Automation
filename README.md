# Robotic Pick & Place Task

## Introduction

### Overview of the Robotic Pick & Place Task

This project focuses on automating the pick and place operation of a disk as part of a manufacturing process line. The workflow involves a robotic arm picking a disk from a conveyor at Station 1, moving to Station 2 for labeling, and finally placing the disk at Station 3 for transfer to another conveyor. The disk dimensions are 2 cm in width and weigh 0.5 kg, making it feasible for a variety of robotic arms to handle.

The entire process will be simulated using **RoboDK**, a powerful software for robotics simulation and programming, alongside **MATLAB** to perform trajectory planning and verify kinematic calculations.

### Robotic Arm Selection

#### Introduction to the ABB CRB 1300-11/0.9

The **ABB CRB 1300** is part of ABB's collaborative robot series, designed to work alongside human operators while adhering to safety guidelines. It combines advanced robotics technology with ease of programming, making it ideal for tasks such as pick and place operations in a manufacturing environment. Key features include:

1. **Degree of Freedom**: The ABB CRB 1300 has 6 degrees of freedom:
   - **Base Rotation (Joint 1)**: Rotates the entire arm around its base.
   - **Shoulder Joint (Joint 2)**: Moves the arm up and down, allowing for vertical reach.
   - **Elbow Joint (Joint 3)**: Extends and retracts the arm, adjusting the horizontal reach.
   - **Wrist Rotation (Joint 4)**: Rotates the wrist around its axis.
   - **Wrist Bend (Joint 5)**: Moves the wrist up and down.
   - **Wrist Twist (Joint 6)**: Rotates the end effector, allowing for precise orientation control.

2. **Reach (Workspace)**: With a reach of approximately 900 mm, this manipulator is suitable for the distances between the stations, efficiently moving from Station 1 to Station 2, and then to Station 3.

3. **Payload Capacity**: The arm can handle payloads up to 11 kg, which is well above the 0.5 kg disk, ensuring efficient operation without risk of overload.

4. **Precision and Speed**: The ABB CRB series is known for its precision and speed, which are critical for maintaining the efficiency of the manufacturing process.

5. **Robustness and Versatility**: This robotic arm is designed for industrial applications and can be easily adapted to various automated tasks, making it a suitable choice for our simulation needs.

## 
![image](https://github.com/user-attachments/assets/238f89e2-67f1-452a-a49e-b3decd8917d8)

![image](https://github.com/user-attachments/assets/7cbf1ede-593a-4321-8eae-eccf64677c3c)

![image](https://github.com/user-attachments/assets/b7caa7b3-a362-4067-93e0-9c22b608d9af)

![image](https://github.com/user-attachments/assets/dba007f1-a747-4afa-b011-84e043dcaadc)

![image](https://github.com/user-attachments/assets/661ecec6-6a3d-44d6-824c-c9fe73f32913)

![image](https://github.com/user-attachments/assets/d1c012b3-e650-4930-b9e3-c688a1b5da45)

![image](https://github.com/user-attachments/assets/a4b2901c-85e7-49fb-b0e4-62f71140d2b0)

![image](https://github.com/user-attachments/assets/c22b2278-714d-46e1-ba93-e4b638d7aa79)

![image](https://github.com/user-attachments/assets/e5ba99ce-8824-4cd3-9fc5-1da705d25d22)
