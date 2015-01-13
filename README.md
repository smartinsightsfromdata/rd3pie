This is my first attempt to use htmlwidgets.

I got much further much quicker than what I initially thought!

Now all seems to be working.

Version 0.10:
This version manages:
* outerradius (to make pie smaller when there are loads of labels)
* Distruction of previous pies (especially important with shiny, e.g. when associated to a slider)
* accepts any two columns names (changing them to "label" and "value" for d3pie)

#TODO:

* Improve doc etc. in view of a possible CRAN submission?
* Implement callbacks?
* Allow to set slices ordering and features settings


