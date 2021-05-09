运行：
	解压缩
	
	cd turtlebot2/
	catkin_make   这里如果不能catkin_make，就先删掉turtlebot2里面的build 和 devel两个文件夹，然后再catkin_make
	如果编译提示缺少什么包，按照提示安装
   	source ./devel/setup.bash
	打开 py_detect_environment.py，把第72行的路径改成自己的,然后ctrl+s保存
	roslaunch robot_nodes robot.launch

说明：
1、只需要启动robot.launch即可，我把gazebo的启动都放进去了。
2、运行结果每次可能都不一样，但是相差不大，时间大多在1分30秒左右
3、最后可能会在门那里有个小挫折，但是最后都能出去，我试了十多次都可以
	
