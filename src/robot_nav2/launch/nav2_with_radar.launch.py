import os,yaml
from pathlib import Path
from ament_index_python.packages import get_package_share_directory
from launch_ros.actions import Node
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import LaunchConfiguration

def load_yaml(file_path: Path) -> dict:
    with open(file_path, 'r') as f:
        return yaml.safe_load(f)

def generate_launch_description():
    use_sim_time = LaunchConfiguration('use_sim_time', default='false')

    bringup_dir = get_package_share_directory('bringup')
    bringup_launch_dir = os.path.join(bringup_dir, 'launch')

    """
    radar_dir = get_package_share_directory('radar')
    radar_launch_dir = os.path.join(radar_dir, 'launch')
    """

    robot_nav_dir = get_package_share_directory('robot_nav2')
    robot_nav_launchr = os.path.join(robot_nav_dir, 'launch')
    cfg_params = load_yaml(os.path.join(get_package_share_directory('bringup'),'config','param.yaml'))
    car_mode = cfg_params['car_mode']
    print(f"car_mode:{car_mode}")

    map_dir = os.path.join(robot_nav_dir, 'map')
    map_file = LaunchConfiguration('map', default=os.path.join(
        map_dir, 'MAP.yaml'))

    param_dir = os.path.join(robot_nav_dir, 'param')
    param_file = LaunchConfiguration('params', default=os.path.join(
        param_dir, f'param_{car_mode}.yaml'))
    print(os.path.join(param_dir, f'param_{car_mode}.yaml'))

    return LaunchDescription([
        DeclareLaunchArgument(
            'map',
            default_value=map_file,
            description='Full path to map file to load'),

        DeclareLaunchArgument(
            'params',
            default_value=param_file,
            description='Full path to param file to load'),
        Node(
            name='waypoint_cycle',
            package='nav2_waypoint_cycle',
            executable='nav2_waypoint_cycle',
        ),
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(
                [bringup_launch_dir, '/bringup.launch.py']),
        ),
       IncludeLaunchDescription(
            PythonLaunchDescriptionSource(
                [bringup_launch_dir, '/lidar.launch.py']),
        ),        
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(
                [robot_nav_launchr, '/bringup_launch.py']),
            launch_arguments={
                'map': map_file,
                'use_sim_time': use_sim_time,
                'params_file': param_file}.items(),
        ),
        """
        IncludeLaunchDescription(
            PythonLaunchDescriptionSource(
                [radar_launch_dir, '/radar.launch.py']),
        ),
        Node(
            name='transform_scan',
            package='radar',
            executable='transform_scan.py',
        ),
        """
    ])
