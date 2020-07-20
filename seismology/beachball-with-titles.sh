#!/usr/bin/env bash
gmt begin beachball-with-titles png
	gmt meca meca.dat -JM15c -R110/120/30/35 -Sa2c+f12p,red+o0c/0.25c -Baf
gmt end show
