#!/bin/bash

export NAO_IP=10.81.226.51

roslaunch nao_bringup nao_full.launch
roslaunch nao_apps leds.launch
