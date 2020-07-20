#!/usr/bin/env bash
gmt begin beachball-color-by-depth png
	gmt makecpt -Cseis -T0/50
	gmt meca meca.dat -JM15c -R110/120/30/35 -Sa1c -Baf -Z
	gmt colorbar -Baf
gmt end show
