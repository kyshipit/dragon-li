🌐 Language: **English** | [中文](README.zh.md)

# ROS2-based Mobile Robot Navigation Stack

A ROS2 project for mobile robot chassis, including chassis driver, sensor integration, SLAM and Nav2 navigation. The microcontroller firmware will be added under `firmware/` later.

## Key Features

- **Multi-chassis Scalable** — Ackermann, 4-wheel differential, Mecanum wheel switchable via URDF and controller parameters
- **Optional SLAM** — Configuration packages for Cartographer and slam_toolbox, selectable by scenario
- **Nav2 Navigation** — AMCL localization + global/local planner + recovery behaviors, parameters centralized under `robot_nav2/param`
- **Map Management** — Unified map saving via `save_map.launch.py`, supports extra serialization for slam_toolbox / cartographer
- **Reserved for Lower Controller** — Firmware code to be added in `firmware/`, communicates with upper computer over serial/CAN

## Directory Structure

```
src/
├── bringup/        # Chassis serial driver, IMU, EKF, sensor launch files
├── description/    # Robot URDF model, mesh, RViz configurations
├── robot_msgs/     # Custom chassis messages
├── robot_nav2/     # Nav2 navigation launch, maps, parameters, RViz
├── slam/           # Cartographer, slam_toolbox mapping configurations
└── lidar/          # LiDAR driver
```

firmware/ (lower controller firmware) will be added later and is not part of the current workspace.

## Dependencies

```bash
sudo apt install ros-humble-navigation2 ros-humble-nav2-bringup
sudo apt install ros-humble-slam-toolbox ros-humble-cartographer-ros
```

Install remaining dependencies according to `package.xml`:

```bash
rosdep install --from-paths src --ignore-src -r -y
```

Place LiDAR driver by model into `src/lidar/`.

## Build

```bash
colcon build --symlink-install
source install/setup.bash
```

## Run

### Chassis and Sensors

```bash
ros2 launch bringup bringup.launch.py
```

Alternative split launch:

```bash
ros2 launch bringup base_serial.launch.py
ros2 launch bringup lidar.launch.py
ros2 launch bringup ekf.launch.py
```

### SLAM Mapping

```bash
ros2 launch slam_toolbox_config online_async_launch.py
ros2 launch cartographer_config cartographer.launch.py
```

### Save Map

```bash
ros2 launch robot_nav2 save_map.launch.py
```

Extra save for slam_toolbox / cartographer:

```bash
ros2 launch robot_nav2 save_map.launch.py slam_toolbox:=True
ros2 launch robot_nav2 save_map.launch.py cartographer:=True
```

### Nav2 Navigation

```bash
ros2 launch robot_nav2 nav2.launch.py
```


