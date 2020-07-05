#!/usr/bin/env bash
#
# Create a contour plot of Earth relief at 60 arc-minute resolution

gmt begin contours pdf
    # Use basemap to plot the map frame and set the plot region and projection.
    # -JN = Robinson projection
    gmt basemap -JN15c -B -Rg
    # Without any options will use the defaults.
    # Set the regular (C) and annotated (A) contours and the pen for regular (Wc) and
    # annotated (Wa). +f sets the font property of the annotations (in this case, the
    # size to 6 points).
    gmt grdcontour @earth_relief_60m \
        -C1000 -A4000+f6p \
        -Wathin,black,-- -Wcthinnest,black
gmt end show
