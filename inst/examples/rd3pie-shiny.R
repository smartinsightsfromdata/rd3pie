library(shiny)
library(rd3pie)
require(magrittr)
require(dplyr)

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

ui = shinyUI(fluidPage(
  rd3pie::rd3pieOutput('pie')
))

server = function(input, output, session) {
  output$pie <- renderRd3pie(
    rd3pie(beerData)
  )
}


shinyApp(ui = ui, server = server)
