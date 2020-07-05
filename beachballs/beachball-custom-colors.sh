#!/usr/bin/env bash
#
# Plot beachballs of three basic faults (strike-slip, normal and reverse faults),
# with the compressional and extensive quadrants filled by different colors.
#

gmt begin beachball-custom-colors
    # -G select the filling of the compressional quadrants
    # -E select the filling of the extensive quadrants
	gmt meca meca.dat -JM15c -R113/117/32/34 -Baf -Sd2c -Gred -Elightblue
gmt end show
