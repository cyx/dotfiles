#!/bin/bash

# Use this in conjunction with hi dpi type laptops. I wasn't
# able to find any other option for making the trackpoint fast
# enough in this context other than the serio1 hack.
echo -n 200 > /sys/devices/platform/i8042/serio1/serio2/speed
echo -n 255 > /sys/devices/platform/i8042/serio1/serio2/sensitivity
