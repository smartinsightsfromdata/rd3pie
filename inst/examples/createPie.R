library(rd3pie)

a <- data.frame(label = c("JavaScript","Ruby","Java"),
	value = c(264131,218812,157618 ),
	caption = c("JavaScript-","Ruby-","Java-"),
	stringsAsFactors = F)

d3data <- lapply(1:nrow(a), function(i) {
  l_ <- as.list(a[i, ])
  return(l_)})

d3data

rd3pie(a,"this is a title", enabled_tooltips= TRUE, type = "caption" )
