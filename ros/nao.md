# Nao Robot Setuudo apt-get install ros-.*-nao.robot

* [Documentation](doc.aldebaran.com/2-4/home_nao.html)
* [SDK Download](https://community.ald.softbankrobotics.com/en/resources/software/language/en-gb)
* [Nao Bringup](http://wiki.ros.org/nao_bringup)

    roslaunch nao_bringup nao_full.launch nao_ip:=10.81.226.51

_or_

    roslaunch nao_bringup nao_full_py.launch nao_ip:=10.81.226.51

## Walker

    roslaunch nao_apps walker.launch
    sudo apt-get install ros-indigo-teleop-twist-keyboard
    rosrun teleop_twist_keyboard teleop_twist_keyboard.py

_or_

    rosservice call /nao_robot/pose/body_stiffness/disable
    rosservice call /nao_robot/pose/body_stiffness/enable 

    rostopic pub -1 /cmd_vel geometry_msgs/Twist '{linear: {x: 1.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0 }}'

## Packages/Nodes/Topics/Services/Parameters

* [`nao_apps`](http://wiki.ros.org/nao_apps)
    * `alife.launch` ("Autonomous Life")
        * `nao_alife` (`nao_apps nao_alife.py`)
            * Service: `disabled` (`std_srvs/Empty`)
            * Service: `interactive` (`std_srvs/Empty`)
            * Service: `safeguards` (`std_srvs/Empty`)
            * Service: `solitary` (`std_srvs/Empty`)
    * `behaviors.launch` (prerecorded actions)
        * `nao_behaviors` (`nao_apps nao_behaviors.py`)
            * Action: `run_behavior` (naoqi_msgs/RunBehaviorGoal`)
            * Service: `get_installed_behaviors` (`naoqi_msgs/GetInstalledBehaviors`)
    * `footsteps.launch`
        * `nao_footsteps` (`nao_apps nao_footsteps.py`)
            * Topic: `footstep` (`humanoid_nav_msgs/StepTarget`)
            * Service: `footstep_srv` (`humanoid_nav_msgs/StepTargetService`)
            * Service: `clip_footstep_srv` (`humanoid_nav_msgs/ClipFootstep`)
            * Parameter: `~init_stiffness` (float, default 0.0)
        * `naoqi_driver` (`naoqi_joint_states.py`)
        * `naoqi_pose` (`naoqi_pose pose_controller.py`)
    * `leds.launch` (control all LEDs and blinking behavior)
        * `nao_leds` (`nao_apps nao_leds.py`)
            * Action: `blink` (`naoqi_msgs/BlinkGoal`)
            * Topic: `fade_rgb` (`naoqi_msgs/FadeRGB`) [LED names](http://doc.aldebaran.com/2-1/naoqi/sensor/alleds.html)

TODO: `nao_diagnostic_updater`
