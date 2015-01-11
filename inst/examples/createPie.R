library(rd3pie)

a <- data.frame(label = c("JavaScript","C++","Java"),
	value = c(264131,218812,157618 ),stringsAsFactors = F)


rd3pie(a,"Title","title")

