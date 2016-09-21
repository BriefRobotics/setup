# Nao Robot Setuudo apt-get install ros-.*-nao.robot

* [Documentation](doc.aldebaran.com/2-4/home_nao.html)
* [SDK Download](https://community.ald.softbankrobotics.com/en/resources/software/language/en-gb)
* [Nao Bringup](http://wiki.ros.org/nao_bringup)

    roslaunch nao_bringup nao_full.launch nao_ip:=157.54.154.27
    roslaunch nao_apps walker.launch

## Walker

    sudo apt-get install ros-indigo-teleop-twist-keyboard
    rosrun teleop_twist_keyboard teleop_twist_keyboard.py
