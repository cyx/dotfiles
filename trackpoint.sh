#!/bin/bash

prefix=/sys/devices/platform/i8042/serio1

test -e $prefix/serio3 && (
	echo -n 100 > $prefix/serio3/speed &&
	echo -n 255 > $prefix/serio3/sensitivity &&
	echo -n 4 > $prefix/serio3/inertia
) || (
	echo -n 100 > $prefix/serio2/speed &&
	echo -n 255 > $prefix/serio2/sensitivity &&
	echo -n 4 > $prefix/serio2/inertia
)
