#CP2102 串口号0002 设置别名为robot_controller
echo  'KERNEL=="ttyUSB*",      ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0002", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_controller"' >/etc/udev/rules.d/robot_controller.rules
#CH9102，同时系统安装了对应驱动 串口号0002 设置别名为robot_controller
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0002", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_controller"' >/etc/udev/rules.d/robot_controller2.rules
#CH9102，同时系统没有安装对应驱动 串口号0002 设置别名为robot_controller
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0002", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_controller"' >/etc/udev/rules.d/robot_controller3.rules

#CP2102 串口号0001 设置别名为robot_lidar
echo  'KERNEL=="ttyUSB*",      ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0001", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_lidar"' >/etc/udev/rules.d/robot_lidar.rules
#CH9102，同时系统安装了对应驱动 串口号0001 设置别名为robot_lidar
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0001", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_lidar"' >/etc/udev/rules.d/robot_lidar2.rules
#CH9102，同时系统没有安装对应驱动 串口号0001 设置别名为robot_lidar
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0001", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_lidar"' >/etc/udev/rules.d/robot_lidar3.rules

#CP2102 串口号0010 设置别名为robot_lidar2
echo  'KERNEL=="ttyUSB*",      ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0010", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_lidar2"' >/etc/udev/rules.d/robot_lidar4.rules
#CH9102，同时系统安装了对应驱动 串口号0001 设置别名为robot_lidar2
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0010", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_lidar2"' >/etc/udev/rules.d/robot_lidar5.rules
#CH9102，同时系统没有安装对应驱动 串口号0001 设置别名为robot_lidar2
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0010", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_lidar2"' >/etc/udev/rules.d/robot_lidar6.rules

#CP2102 串口号0003 设置别名为robot_FDI_IMU_GNSS
echo  'KERNEL=="ttyUSB*",      ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_FDI_IMU_GNSS"' >/etc/udev/rules.d/robot_fdi_imu_gnss.rules
#CH9102，同时系统安装了对应驱动 串口号0003 设置别名为robot_FDI_IMU_GNSS
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_FDI_IMU_GNSS"' >/etc/udev/rules.d/robot_fdi_imu_gnss2.rules
#CH9102，同时系统没有安装对应驱动 串口号0003 设置别名为robot_FDI_IMU_GNSS
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_FDI_IMU_GNSS"' >/etc/udev/rules.d/robot_fdi_imu_gnss3.rules

#CP2102 串口号0003 设置别名为robot_IMU
echo  'KERNEL=="ttyUSB*",      ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_IMU"' >/etc/udev/rules.d/robot_imu.rules
#CH9102 ，如果已经安装了驱动使用CH343	
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4", ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_IMU"' >/etc/udev/rules.d/robot_imu_343.rules
#CH9102  如果没有安装驱动
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4", ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_IMU"' >/etc/udev/rules.d/robot_imu_ACM.rules

#添加GNSS设备规则文件 设置别名为robot_gnss
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1546", ATTRS{idProduct}=="01a9", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_gnss"' >/etc/udev/rules.d/robot_gnss.rules
echo  'KERNEL=="ttyUSB*",      ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0005", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_gnss"' >/etc/udev/rules.d/robot_gps.rules
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4", ATTRS{serial}=="0005", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_gnss"' >/etc/udev/rules.d/robot_gnss_343.rules
#CH9102，同时系统没有安装对应驱动 串口号0005
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0005", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_gnss"' >>/etc/udev/rules.d/robot_gnss_343.rules

#CH9102，同时系统安装了对应驱动 串口号0004 设置别名为robot_mic
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0004", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_mic"' >/etc/udev/rules.d/robot_mic.rules
#CH9102，同时系统没有安装对应驱动 串口号0004 设置别名为robot_mic
echo  'KERNEL=="ttyACM*",      ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0004", MODE:="0777", GROUP:="dialout", SYMLINK+="robot_mic"' >>/etc/udev/rules.d/robot_mic.rules
#CH9102，虚拟串口设置别名为robot_mic_virtual
echo 'KERNEL=="ttyACM*",       ATTRS{idVendor}=="2208", ATTRS{idProduct}=="0001",MODE:="0777", GROUP:="dialout", SYMLINK+="robot_mic_virtual"' >>/etc/udev/rules.d/robot_mic.rules
echo 'KERNEL=="ttyCH343USB*",  ATTRS{idVendor}=="2208", ATTRS{idProduct}=="0001",MODE:="0777", GROUP:="dialout", SYMLINK+="robot_mic_virtual"' >>/etc/udev/rules.d/robot_mic.rules

#添加相机设备规则
echo  'SUBSYSTEM=="video4linux",ATTR{name}=="GENERAL WEBCAM",ATTR{index}=="0",MODE:="0777",SYMLINK+="RgbCam"' >>/etc/udev/rules.d/camera.rules
echo  'SUBSYSTEM=="video4linux",ATTR{name}=="GENERAL WEBCAM: GENERAL WEBCAM",ATTR{index}=="0",MODE:="0777",SYMLINK+="RgbCam"' >>/etc/udev/rules.d/camera.rules
echo  'SUBSYSTEM=="video4linux",ATTR{name}=="Astra Pro HD Camera: Astra Pro ",ATTR{index}=="0",MODE:="0777",SYMLINK+="Astra_Pro"' >>/etc/udev/rules.d/camera.rules
echo  'SUBSYSTEM=="video4linux",ATTRS{idVendor}=="2bc5" ATTRS{idProduct}=="050e",ATTR{index}=="0",MODE:="0777",SYMLINK+="Astra_Dabai"' >>/etc/udev/rules.d/camera.rules
echo  'SUBSYSTEM=="video4linux",ATTRS{idVendor}=="2bc5" ATTRS{idProduct}=="0511",ATTR{index}=="0",MODE:="0777",SYMLINK+="Astra_Gemini"' >>/etc/udev/rules.d/camera.rules
echo  'SUBSYSTEM=="video4linux",ATTR{name}=="Intel(R) RealSense(TM) Depth Ca",ATTR{index}=="0",MODE:="0777",SYMLINK+="realsense"' >>/etc/udev/rules.d/camera.rules
echo  'SUBSYSTEM=="video4linux",ATTR{name}=="Integrated Webcam: Integrated W",ATTR{index}=="0",MODE:="0777",SYMLINK+="RgbCam"' >>/etc/udev/rules.d/camera.rules

service udev reload
sleep 2
service udev restart


