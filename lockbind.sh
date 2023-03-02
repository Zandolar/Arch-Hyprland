#!/bin/bash

swayidle -w \
         timeout 1 '~/lockscreen.sh' \
         timeout 10 'brightnessctl get > /tmp/brightness && brightnessctl set 0%' \
            resume 'brightnessctl set $(\[ -f /tmp/brightness \] && cat /tmp/brightness || echo 25%)' \
         before-sleep '~/lockscreen.sh' \
