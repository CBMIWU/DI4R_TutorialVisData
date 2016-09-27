##################################################
# Digital Infrastructures for Research 2016
# Visualizing Operational Informatics Data Using R
# by Leslie McIntosh & Connie Zabarouskaya
# Hands-on for rCharts
##################################################

# Source Code (step 0)
# install.packages("devtools")
# require(devtools)
# install_github('ramnathv/rCharts')

library(rCharts)

# read in the data
opsdata <- read.csv("data/opsdata.csv")

# function to convert the date format into suitable for rCharts
to_jsdate2 <- function(x){
  as.numeric(as.POSIXct(as.Date(x), origin="1970-01-01")) * 1000
}

# change the date columns format to Date
opsdata$created <- to_jsdate2(as.Date(opsdata$created, format = "%m/%d/%Y %H:%M"))
# select only Help Desk tickets
hd_tickets <- subset(opsdata, ticket_type!='HD')  
# aggregate number of tickets by day
hd_tickets <- aggregate(id ~ created, data=hd_tickets, length)
names(hd_tickets) <- c("created","tickets")


#################################
# Your task
#################################

# You are now ready to try and build a chart on your own.
# The dataset is prepared below (Step 0)
valid_app_tickets <- subset(opsdata, application != "" & ticket_type != "HD")
projects_by_product <- aggregate(valid_app_tickets$title, 
                                 by = list(application = valid_app_tickets$application),
                                 length)
names(projects_by_product) <- c("application", "projects")
# order aggregate counts in descending order
projects_by_product <- projects_by_product[order(-projects_by_product$projects),]
# combine the top 4 applications and sum of the rest of applications collapsed into "Other"
topProducts <- rbind(head(projects_by_product,4), c("Other", sum(tail(projects_by_product$projects,nrow(projects_by_product)-4)))) 
topProducts$projects <- as.numeric(topProducts$projects)

# Step 1
# Task: build a column chart (type="column") with the data from topProducts dataset
# Add a clear title to the chart and its axes
# Use type of "category" for x-axis, and make gridLines white
# Change the height to be 300 pixels
# Feel free to add more features from the previous example, like zooming for example


# Advanced
# Step 2
# Enhance the chart by adding a clear tooltip

