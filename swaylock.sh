#!/bin/bash

swayidle -w \
         timeout 300 '~/lockscreen.sh' \
         timeout 600 'systemctl suspend' \
         before-sleep '~/lockscreen1.sh' \
          
