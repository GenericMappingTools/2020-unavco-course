#!/usr/bin/env bash
# Make our first GMT map of Italy, of all places
gmt begin italy pdf,png # Starting our new gmt modern mode session, calling plot italy and ask for pdf and png
    #Lay down painted continent with national borders on a Mercator map
    gmt coast -R5/20/35/50 -Wthin -Gbeige -Df -Sazure -B -N1/thick,red -JM15c
    # Show where Italy is in the world via a map inset
    gmt inset begin -DjTR+w4c+o0.2c -M0 -F+gwhite+pthick
        gmt coast -Rg -JG70W/15S/4c -Gbeige -Bg -EIT+gred
    gmt inset end
gmt end show # end will finish the plots and open them in a viewer
