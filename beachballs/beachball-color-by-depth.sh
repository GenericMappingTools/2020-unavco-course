#!/usr/bin/env bash
#
# Plot beachballs of three basic faults, with the compressive quadrants color
# determined by earthquake depth
#

gmt begin beachball-color-by-depth
    # Customize the jet CPT
    gmt makecpt -Cjet -T0/30/10
    # Plot beachballs using the "current" CPT, by using -Z with no arguments.
    gmt meca meca.dat -JM15c -R113/117/32/34 -Baf -BWSen -Sd2c -Z
    # Plot the colorbar in the Middle Right (MR), shift it 1.5 cm to the right.
    # Set the label for the colorbar with -Bx+l,
    # and move the label to the left of the colorbar (+ml)
    gmt colorbar -DJMR+ml+o1.5c/0c -Bx+l"Depth (km)" -Np
gmt end show
