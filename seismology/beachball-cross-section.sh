#!/usr/bin/env bash
gmt begin beachball-cross-section png
	gmt coupe meca.dat -Sa2c -Aa111/33/119/33/90/500/0/60+f -JX15c/-8c -Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -BWSen -Q
gmt end show
