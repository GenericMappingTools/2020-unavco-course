#!/usr/bin/env bash
#
# Plot cross-section of beachballs
#

gmt begin beachball-cross-section
	# The module name "coupe" comes from the French verb "to cut". The best translation is a (vertical) cross section.
	# coupe uses the same input file format and same -S options as meca.
	# The cross-section is selected by specify the locations (longitude and latitude) of a starting point (113/33), 
	# and a ending point (117/33). The cross-section plane is vertical (dip angle=90), with the width set to be 100 km,
	# and depth to be 0-30 km.
	# The plot region (usually set by -R) is automatically determined and set if +f is used.
	#
	# To reverse the Y axis, set the figure heigth to a negative value (-10 cm)
	gmt coupe meca.dat -JX15c/-10c -Bxaf+l"Distance (km)" -Byaf+l"Depth (km)" -BWSen \
		-Sd2c -Aa113/33/117/33/90/100/0/30+f -Q
gmt end show
