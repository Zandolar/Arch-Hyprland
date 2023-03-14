#!/bin/bash

swayidle -w \
         timeout 10 '~/lockscreen.sh' \
         timeout 450  'brightnessctl get > /tmp/brightness && brightnessctl set 0%' \
            resume 'brightnessctl set $(\[ -f /tmp/brightness \] && cat /tmp/brightness || echo 25%)' \
         timeout 30 'systemctl suspend'
         before-sleep '~/lockscreen1.sh' \
          
