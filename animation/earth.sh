#!/usr/bin/env bash
# Make a very simple spinning globe movie using coast
# Run one of the gmt movie commands commented out below
gmt begin
    gmt coast -Rg -JG${MOVIE_FRAME}/30/12c -Gburlywood -Bg -Stomato -Xc -Yc
gmt end
# 1. Test that script works by just making a single frame (55) as PDF, no movie generated
# gmt movie earth.sh -C360p -T91 -M55,pdf -Fnone -Nearth
# 2. Run the movie and build a MP4 animation
# gmt movie earth.sh -C360p -T91 -Fmp4 -Nearth -Le