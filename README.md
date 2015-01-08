R ggplot2 Hack Collection
=========================

I periodically dump R plot hacks in this repository.

Repository
----------

The repository has the following structure.

* plots---R code
* data---data sources used in scripts
* output---final output: .eps, .dvi, .ps, .tex.


Requirements
------------

You will need the following R packages

* ggplot2
* ggthemes
* reshape2
* scales
* fmsb


Usage
-----

* Run `preprocessor.sh` shell script to recompile project
    `./preprocessor.sh`

* `preprocessor.sh` does the following:
    * Compiles all Sweave files
    * Runs `latex --shell-escape` to generate individual image files
    * Purges automatically generated files that are not required
    * Renames files accordingly


Sample Catalogue
----------------

* Barplots
    ![plot.sample.barplot.001.Rnw](../output/plot.sample.barplot.001.eps)
    ![plot.sample.barplot.002.Rnw](../output/plot.sample.barplot.002.eps)
    
* Boxplots
    ![plot.sample.boxplot.001.Rnw](../output/plot.sample.barplot.002.eps)

* Kiviat Plots
    ![plot.sample.kiviat.coord_polar.001.Rnw](../output/plot.sample.kiviat.coord_polar.001.eps)

* Multiple Plot on One Graph
    ![plot.sample.multiplots.gridExtra.001.Rnw](../output/plot.sample.multiplots.gridExtra.001.eps)
    
Contributing
------------

1. Fork it
2. Send suggestions
