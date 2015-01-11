require(magrittr)
require(dplyr)
require(rCharts)
beerPie <- rCharts$new()
beerPie$setLib("http://timelyportfolio.github.io/rChartsExtra/d3pie")
# source : The Atlantic April 2014 "The State of American Beer"
# http://www.theatlantic.com/business/archive/2014/04/the-state-of-american-beer/360583/

rd3pie_ <- function(pieData, pieTitle, pieSubTitle, pieStyle){
l_ <- list(
  header = list(
    title = list(
      text = pieTitle),
    subtitle = list(
      text = pieSubTitle)
    ),
  data = list(
    content = as.matrix(pieData)),
  labels = list(
    lines = list(style = pieStyle)))

return(l_)
}

beerData <- rbind(
  c("Bud Light",5946776000),
  c("Coors Light",2360430000),
  c("Budweiser",2110352000),
  c("Miller Light",1868866000),
  c("Natural Light",1122770000),
  c("Busch Light",844276000),
  c("Michelob Ultra",777196700),
  c("Busch",673394400),
  c("Keystone Light",493993000),
  c("Miller High Life",476895100),
  c("Category total",23707870000)
) %>% data.frame(stringsAsFactors = F) %>%  #make data.frame
  set_colnames(c("label","value")) %>%      #set our column names
  mutate(value = as.numeric(value))       #make our values numeric
#change total row to an other row
beerData[nrow(beerData),1] <- "Other"
pieTitle <- "Domestic Beer in the U.S. 2013 | Dollar Sales"
pieSubtitle <- "source: The Atlantic, April 2014"
pieStyle <- "straight"
beerData[nrow(beerData),2] <- sum(beerData[-nrow(beerData),2])


rd3pie_(beerData, pieTitle, pieSubtitle, pieStyle)


beerPie$params$chartspec <- rd3pie_(beerData, pieTitle, pieSubtitle, pieStyle)
# beerPie$params$chartspec <- list(
#   header = list(
#     title = list(
#       text = "Domestic Beer in the U.S. 2013 | Dollar Sales"
#     ),
#     subtitle = list(
#       text = "source: The Atlantic, April 2014"
#     )
#   )
#   ,data = list(
#     content = beerData
#   )
#   ,labels = list(
#     lines = list(style = "straight")
#   )
# )
beerPie
