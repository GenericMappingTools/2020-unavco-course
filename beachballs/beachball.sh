#!/usr/bin/env bash
#
# Plot beachballs of three basic faults (strike-slip, normal and reverse faults)
#

gmt begin beachball
    # meca supports focal mechanisms in different conventions.
    # Here -Sd means the focal mechanisms in input file meca.dat are given
    # in Global CMT moment tensor format, and only the double couple part
    # is plotted.
    # The beachball size is proportional to the magnitude, with the size
    # for magnitude=5 is set to be 2 cm.
    #
	gmt meca meca.dat -JM15c -R113/117/32/34 -Baf -Sd2c

    # Adjust the attributions of beachball event titles:
    # - set the font size (12p)
    # - offset from beachball (6p)
    # - place the event title below the beachball (+u)
    #
    #gmt meca meca.dat -JM15c -R113/117/32/34 -Baf -Sd2c/12p/6p+u
gmt end show
