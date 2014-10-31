# startup script (Startup Applications)

# apple keyboard function keys
# 0 = Fn key disabled
# 1 = Fn key pressed by default (Apple's default)
# 2 = Fn key released by default
echo 2 > /sys/module/hid_apple/parameters/fnmode

# vi-style bash
set -o vi
