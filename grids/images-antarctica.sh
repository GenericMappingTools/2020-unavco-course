#!/usr/bin/env bash
#
# Create a pseudo-color image plot of Antactica using different colormaps (CPTs) for
# land and ocean.

gmt begin images_antarctica pdf
    # Same as the contour example
    gmt basemap -R0/360/-90/-60 -JG0/-90/20c -B

    # Plot the oceans:

    # Customize the abyss CPT to use only negative data in the given range. We'll use
    # this for the oceans.
    gmt makecpt -Cabyss -T-5000/0
    # Another coast superpower: clip the next plotting commands to include only "wet
    # areas". Whatever is plot between this and "coast -Q" will have the continental
    # part cut out. Remember that -S is used to set the fill for oceans.
    gmt coast -Sc
        # Plot using the "current" CPT by using -C with no arguments. Will take the one
        # created by makecpt. Don't use shading for this part.
        gmt grdimage @earth_relief_05m -C
    gmt coast -Q
    # Plot the colorbar in the bottom center but shift it 6 cm to the left and 0.5 cm
    # down (+o) and set the width to 8 cm (+w). Set the label for the x-axis of the
    # colorbar using -Bx+l (l for label). This uses the current colorbar which is now
    # the modified abyss
    gmt colorbar -DJBC+o-6c/0.5c+w8c -B1500 -Bx+l"bathymetry [m]" -C

    # Plot the land:

    # Customize the grays CPT (which goes from black to white) so that the land
    # topography goes from gray to white by shifting the black part down to -6000
    gmt makecpt -Cgray -T-6000/6000
    # Clip the land portion of the plot. Remember that -G can set the fill for land.
    gmt coast -Gc
        # Plot using the "current" CPT, which is not the modified gray
        gmt grdimage @earth_relief_05m -C -I+d
    gmt coast -Q
    # Now the current colorbar is our modified gray, so this call will draw that instead
    # of the abyss. Shift it to the right (+o6c instead of +o-6c) instead. But since we
    # cheated when making the CPT by stretching it out to -6000, we can tell colorbar to
    # crop between 0 and 6000 (-G)
    gmt colorbar -DJBC+o6c/0.5c+w8c -B1500 -Bx+l"topography [m]" -C -G0/6000

    gmt coast -Wthick,black

    # Add a light contour to the land portion to make it look nicer. Use a lower
    # resolution grid here to make it smoother.
    gmt grdcontour @earth_relief_30m -Lp -C500 -Wcthinnest -A2000+f6p -Wathin
gmt end show

