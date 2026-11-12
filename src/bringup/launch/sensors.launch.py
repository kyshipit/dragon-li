import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import (DeclareLaunchArgument, GroupAction,
                            IncludeLaunchDescription, SetEnvironmentVariable)
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
import launch_ros.actions

#def launch(launch_descriptor, argv):
def generate_launch_description():
    bringup_dir = get_package_share_directory('bringup')
    launch_dir = os.path.join(bringup_dir, 'launch')
    car_robot = IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(launch_dir, 'bringup.launch.py')),
    )
    lidar_ros = IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(launch_dir, 'lidar.launch.py')),
    )
    robot_camera = IncludeLaunchDescription(
            PythonLaunchDescriptionSource(os.path.join(launch_dir, 'camera.launch.py')),
    )

    return LaunchDescription([
        car_robot,lidar_ros,robot_camera,]
    )

