#!/bin/bash

# https://github.com/justincampbell/tmux-pomodoro

wget -O tmux-pomodoro-latest.tar.gz https://github.com/justincampbell/tmux-pomodoro/archive/latest.tar.gz tmux-pomodoro
tar -zxvf tmux-pomodoro-latest.tar.gz
cd tmux-pomodoro-latest/
make install

# .tmux.conf
# # Place the current pomodoro status on the right side of your status bar
# set -g status-right '#(pomodoro status)'

# Map a key to start a timer
# bind-key p run-shell 'pomodoro start'

# commandss

# start  - Start a timer for 25 minutes
# status - Show the remaining time, or an exclamation point if done
# clear  - Clear the timer
