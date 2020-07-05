#!/usr/bin/env bash
# Show how subplot works.  Here a 2 by 1.  Change to 3 and add one more coast -c command!
gmt begin
    # See subplot man page for the mysterious -F option
    gmt subplot begin 2x1 -Ff16c/25c -M0 -A
    gmt coast -Rg -JH0 -Gpurple -Bg
    gmt coast -Rg -JR0 -Ggreen -Bg -c
    gmt subplot end
gmt end show
