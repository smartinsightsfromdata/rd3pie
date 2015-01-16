### d3pie for R

The rd3pie package is an R interface to the [d3pie](http://d3pie.org) pie library, based on d3.js. It provides facilites for visualize great pie charts in R. 

See [d3pie](http://d3pie.org) for examples and magnificent pies!


#### Installation

The rd3pie package depends on the development version of the [htmlwidgets](https://github.com/ramnathv/htmlwidgets) package so you need to install both packages. You can do this using the **devtools** package as follows:

```S
devtools::install_github(c("ramnathv/htmlwidgets", "smartinsightsfromdata/rd3pie"))
```

#### Usage

If you have a two-columns data.frame or data.table, with one column containing the labels and the other with the values (must be numeric) it is as simple as this:

```R
rd3pie(Data, Title=NULL, SubTitle=NULL, OuterRadius=NULL)
```

The OuterRadius is an atomic vector  (datatype character) that espresses in percentage (e.g. "80%") how filling the outer radius of the pie must be in respect to the container's size.  If you have loads of labels (with wide tests) it is safe to reduce the radious of the pie circle to "50%" or less.


See the examples in ./inst/examples.
