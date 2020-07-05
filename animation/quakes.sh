#!/usr/bin/env bash
# Make sure you run get_quakes.sh first to obtain some data and create the CPT
# and times.txt data file needed by movie.
# This script (below) creates a single frame, laying down a coast map and then
# plotting only the events that should be visible for the given time (-T).
gmt begin
    gmt coast -Rg -JG${MOVIE_COL1}/30/12c -Gburlywood -Bg -Sgray -Xc -Yc
    gmt events quakes.txt -Cquakes.cpt -T${MOVIE_COL0} -SE- -Es+r2+d6 -Ms5+c0.5 -Mi1+c-0.6 -Mt+c0 --TIME_UNIT=d 
gmt end
# 1. Test that script works by just making a single frame (50) as PDF, no movie generated
# gmt movie quakes.sh -C360p -Ttimes.txt -M50,pdf -Fnone -Nquakes
# 2. Run the movie and build a MP4 animation at 360p resolution
# gmt movie quakes.sh -C360p -Ttimes.txt -Fmp4 -Nquakes
