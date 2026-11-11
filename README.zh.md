🌐 语言: **中文** | [English](README.md)

# 基于 ROS2 的移动机器人导航栈

面向移动机器人底盘的 ROS2 项目，包含底盘驱动、传感器接入、SLAM 与 Nav2 导航。下位机固件后续加入 `firmware/`。

## 核心特性

- **多轮型可扩展** — 阿克曼，四轮差速、麦克纳姆轮按 URDF + 控制器参数切换
- **SLAM 可选** — Cartographer、slam_toolbox 配置包，按场景选择
- **Nav2 导航** — AMCL 定位 + 全局/局部规划 + 恢复行为，参数集中在 `robot_nav2/param`
- **地图管理** — `save_map.launch.py` 统一保存，支持 slam_toolbox / cartographer 额外序列化
- **下位机预留** — 固件代码后续加入 `firmware/`，与上位机通过串口/CAN 通信

## 目录结构
```text
src/
├── bringup/        # 底盘串口驱动、IMU、EKF、传感器启动
├── description/    # 机器人 URDF 模型、mesh、RViz 配置
├── robot_msgs/     # 底盘自定义消息
├── robot_nav2/     # Nav2 导航启动、地图、参数、RViz
├── slam/           # Cartographer、slam_toolbox 建图配置
└── lidar/          # 激光雷达驱动
```

firmware/（下位机固件）后续加入，暂未纳入当前工作空间。

## 依赖

```bash
sudo apt install ros-humble-navigation2 ros-humble-nav2-bringup
sudo apt install ros-humble-slam-toolbox ros-humble-cartographer-ros
```

按 `package.xml` 安装其余依赖：

```bash
rosdep install --from-paths src --ignore-src -r -y
```

激光雷达驱动按型号放入 `src/lidar/`。

## 编译

```bash
colcon build --symlink-install
source install/setup.bash
```

## 运行

### 底盘与传感器

```bash
ros2 launch bringup bringup.launch.py
```

也可拆分：
```bash
ros2 launch bringup base_serial.launch.py
ros2 launch bringup lidar.launch.py
ros2 launch bringup ekf.launch.py
```

### SLAM 建图

```bash
ros2 launch slam_toolbox_config online_async_launch.py
ros2 launch cartographer_config cartographer.launch.py
```

### 保存地图

```bash
ros2 launch robot_nav2 save_map.launch.py
```

slam_toolbox / cartographer 额外保存：

```bash
ros2 launch robot_nav2 save_map.launch.py slam_toolbox:=True
ros2 launch robot_nav2 save_map.launch.py cartographer:=True
```

### Nav2 导航


```bash
ros2 launch robot_nav2 nav2.launch.py
```
