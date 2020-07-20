#!/usr/bin/env bash
gmt begin beachball-colors png
	gmt meca meca.dat -JM10c -R110/120/30/35 -Sa1c -Baf -Elightyellow -Gred
gmt end show
