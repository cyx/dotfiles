#!/bin/bash

echo -n 100 > /sys/devices/platform/i8042/serio1/serio2/speed
echo -n 255 > /sys/devices/platform/i8042/serio1/serio2/sensitivity
echo -n 4 > /sys/devices/platform/i8042/serio1/serio2/inertia
