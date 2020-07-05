#!/usr/bin/env bash
#
# Create a contour map of Antarctica with different color and style for continents and
# oceans

gmt begin contour_antarctica pdf
    # Create the map frame and set the region and projection.
    # There was a bug with the Antactica ISO country code so we have to specify the
    # reigon manually.
    # The projection is Azimuthal orthographic centered at the South pole (0/-90)
    gmt basemap -R0/360/-90/-60 -JG0/-90/15c -B
    # Restrict to the positive contours by passing -Lp (P would include 0)
    gmt grdcontour @earth_relief_30m -Lp \
        -C500 -Wcthinnest,black \
        -A2000+f6p -Wathin,black
    # Restrict to the negative contours by passing -Ln (N would include 0)
    gmt grdcontour @earth_relief_30m -Ln \
        -C500 -Wcthinnest,lightblue \
        -A2000+f6p -Wathin,lightblue
    # Plot the coastlines using a thick black line
    gmt coast -Wthick,black
gmt end show
