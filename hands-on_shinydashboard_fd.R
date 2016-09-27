##################################################
# Digital Infrastructures for Research 2016
# Visualizing Operational Informatics Data Using R
# by Leslie McIntosh & Connie Zabarouskaya
# Hands-on for shinydashboard
##################################################

# Source Code (step 0)

# install.packages("devtools")
# require(devtools)
# install_github('ramnathv/rCharts')
# install.packages("shiny")
# install.packages("shinydashboard")


library(shiny)
library(shinydashboard)

library(rCharts)

# Data preparation code
# function to convert to POSIXct date format, specifically for line chart
to_jsdate2 <- function(x){
  as.numeric(as.POSIXct(as.Date(x), origin="1970-01-01")) * 1000
}

# read in the data
opsdata <- read.csv("data/opsdata.csv")

# change the date columns format to Date
opsdata$created <- to_jsdate2(as.Date(opsdata$created, format = "%m/%d/%Y %H:%M"))
# select only Help Desk tickets
hd_tickets <- subset(opsdata, ticket_type!='HD')  
# aggregate number of tickets by day
hd_tickets <- aggregate(id ~ created, data=hd_tickets, length)
names(hd_tickets) <- c("created","tickets")

# the function handling UI
ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)

# in a ui.R file it will look like this:
# dashboardPage(
#   dashboardHeader(),
#   dashboardSidebar(),
#   dashboardBody()
# )

# the function handling server side
server <- function(input, output) { }

# in a server.R file it will look like this:
# shinyServer(
#   function(input, output) {}
# )

shinyApp(ui, server)

# This is the canvas you'll use to fill with charts and widgets
# NOTE: this layout is unique to shinydashboard package, however, once you try it
# you are unlikely to go back to the simple layouts of Shiny package


#################################
# Your task
#################################

# Now you are ready to try adding a chart and a widget on your own.
# Add a histogram chart to this dashboard, in its own box()
# The histogram should visualize distribution of a variable in the opsdata 
# dataset (you can use hoursLogged column to begin with). Use the frequencyPlot
# as a starter. Next add a selectInput() widget as we have with "Number of Tickets"
# with two options: hoursLogged and daysOpen. Connect the input and the histogram.

# NOTE: You may need to adjust the height of charts to make sure they fit in one page
