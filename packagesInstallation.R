# Packages you need to install using internet connection

# packages for hands-on rCharts and shinydashboard
install.packages("shiny")
install.packages("shinydashboard")
install.packages("devtools")

require(devtools)
install_github('ramnathv/rCharts')
# rCharts is not on CRAN

# see README.txt for details of offline installation.