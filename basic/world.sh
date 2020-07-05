#!/usr/bin/env bash
# To make more than one plot per session you need to use gmt figure
gmt begin
    gmt figure world1
    gmt coast -Rg -JH0/15c -Gpurple -Bg
    gmt figure world2
    gmt coast -Rg -JR0/15c -Ggreen -Bg
gmt end show
