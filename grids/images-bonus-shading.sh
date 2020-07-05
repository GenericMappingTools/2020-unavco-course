#!/usr/bin/env bash
#
# BONUS: Create an image plot of the geoid but shade it using topography to give a
# slight impression of it on the smooth geoid map.

gmt begin geoid
    # Make a global Mollweide map
    gmt basemap -Rg -JW25c -B

    # We can't use the automatic -I+d since we want to use a different data grid to
    # create the shadow. For this, we have to go old school.
    # Shading is done by calculating a directional derivative of the data. That is what
    # grdgradient does. It will create a new grid file (-G) with the derivative along
    # the 45 degree azimuth (-A) and normalize it to [-1,1] (-N), which is needed for
    # shading.
    gmt grdgradient @earth_relief_10m -A45 -N -Grelief_gradient.nc

    # The geoid data is in the remote file @osu91a1f_16.nc. This is a 60 arc-minute
    # resolution grid. To use shading, the data and gradient grids have to match. We
    # will resample the geoid grid at 10 arc-minutes (-I) to match the gradient grid.
    # Resampling to smaller grid spacing is OK but doing the opposite may result in
    # aliasing!
    gmt grdsample @osu91a1f_16.nc -I10m -Ggeoid.nc

    # Finally, make a image plot the same way we did before but passing the gradient
    # grid to -I instead of the defaults (+d). The polar CPT is good for showing
    # diverging data (which has negative and positive).
    gmt grdimage geoid.nc -Cpolar -Irelief_gradient.nc

    # Make a colorbar with arguments we've seen before
    gmt colorbar -DJBC+w10c+o0/0.5c -B25 -Bx+l"geoid height [m]"
gmt end show
