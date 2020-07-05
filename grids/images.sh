#!/usr/bin/env bash
#
# Create a pseudo-color image plot of global Earth relief

gmt begin images pdf
    # Use basemap to create a frame and set the region and projection (in this case,
    # Mollweide)
    gmt basemap -Rg -JW20c -B
    # Plot Earth relief by mapping values to colors using the "etopo1" CPT (colormap).
    # Set automatic shading effects
    gmt grdimage @earth_relief_30m -Cetopo1 -I+d
    # Add a colorbar anchored to the bottom center (BC) in the outside of the plot (J)
    # -C tells it to use the "current" colormap (this will not be necessary in the near
    # future). Use -B to configure the frame of the colorbar (just like the map frame).
    # The number is the interval between annotations.
    gmt colorbar -DJBC -C -B2000
gmt end show
