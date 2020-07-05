#!/usr/bin/env bash
#
# Plot beachballs of three basic faults (strike-slip, normal and reverse faults)
# for the same size
#

gmt begin beachball-same-size
    # By default, the beachball size is proportional to the magnitude,
    # with the size for magnitude=5 set by -S.
    # Use -M if you want to use the same size for any magnitude.
	gmt meca meca.dat -JM15c -R113/117/32/34 -Baf -Sd2c -M
gmt end show
