#!/bin/bash

swayidle -w \
         timeout 300 '~/lockscreen.sh' \
         timeout 480 'brightnessctl get > /tmp/brightness && brightnessctl set 0%' \
            resume 'brightnessctl set $(\[ -f /tmp/brightness \] && cat /tmp/brightness || echo 25%)' \
         before-sleep '~/lockscreen.sh' \
