# Plotting grids and images

![Pseudo-color plot of Earth relief data](earth-relief.png)

This part of the tutorial is dedicated to plotting gridded data in GMT: contour
plots, pseudo-color plots (images), etc.

## Topics

* [Main grid formats in GMT](#grid-formats)
* [Pixel vs grid-line registration](#grid-registration)
* [Plotting contours](#contour-plots)
* [Plotting pseudo-color images](#pseudo-color-plots)
* [Colorbars and color palette tables (CPTs)](#colorbars-and-cpts)

## Grid formats

The main file format GMT uses for grids is called **netCDF**:

> "self-describing, machine-independent data formats that support the creation,
> access, and sharing of array-oriented scientific data"
>
> https://en.wikipedia.org/wiki/NetCDF

The file contains information about:

* Data values on the grid
* Coordinates
* Metadata: units, projections, etc

All stored in a [binary file](https://en.wikipedia.org/wiki/Binary_file) that
support data compression and is widely accessible from other software (GIS,
Matlab, Python, etc).

Further reading: https://docs.generic-mapping-tools.org/latest/gmt.html#grd-inout-full

### Follow along

> Open a terminal and follow along with the exercise.

All GMT commands that operate on grids start with `grd`: `grdimage`,
`grdsample`, `grdcontour`, etc.

Use [`grdinfo`](https://docs.generic-mapping-tools.org/latest/grdinfo.html) to
get information about a grid file:

```
gmt grdinfo @earth_relief_10m
```

The option `-Cn` will print only numerical information about the grid (
`w e s n z0 z1 dx dy nx ny` by default):

```
gmt grdinfo @earth_relief_10m -Cn
```

Option `-o` can be combined with `-Cn` to select only one of the number printed
out. This is useful if you need to use this information as input for other
commands or assign them into *variables*. For example, we can get the grid
spacing in the x dimension:

```
gmt grdinfo @earth_relief_10m -Cn -o6
# Or store it in a variable with
dx=` gmt grdinfo @earth_relief_10m -Cn -o6`
```

Further reading: https://docs.generic-mapping-tools.org/latest/grdinfo.html

## Grid registration

The `-r` option.

### Follow along

## Contour plots

### Follow along

> Open VSCode (or your text editor of choice) and follow along with the
> exercise.


## Pseudo-color plots

### Follow along

## Colorbars and CPTs

### Follow along

## Exercise

You will be split into teams to work on an exercise:

1. Discuss with your team which commands and options you would use
2. Work together to make a script that generates the desired plot
3. If you have any questions, ask on the Slack chatroom

**Bonus:** If you're all finished with the exercise and want an extra challenge,
try the following:
