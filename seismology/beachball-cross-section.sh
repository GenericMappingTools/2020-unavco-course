#!/usr/bin/env bash
gmt begin beachball-cross-section png
	gmt coupe meca.dat -Sa1c -Aa111/33/119/33/90/500/0/50 -R0/1000/0/100 -JX15c/-8c -Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -BWSen -Q
gmt end show
