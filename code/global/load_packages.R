# Load packages using script copied from:
# https://www.r-bloggers.com/install-and-load-missing-specifiedneeded-packages-on-the-fly/
# needed packages for a job
# 
need <- c("shiny",
"shinythemes",
"shinydashboard",
"ggplot2",
"dplyr",
"rlang",
"data.table",
"stringi",
"Cairo",
"RcppRoll",
"tidyr",
"lubridate",
"pryr",
"zoo",
"sp",
"leaflet",
"rgdal",
"RCurl",
"tidyverse",
"curl",
"reticulate")
# find out which packages are installed
ins <- installed.packages()[, 1]
# check if the needed packages are installed
(Get <-
    need[which(is.na(match(need, ins)))])
# install the needed packages if they are not-installed
if (length(Get) > 0) {
  install.packages(Get)
}
# load the needed packages
eval(parse(text = paste("suppressPackageStartupMessages(library(", need, "))")))
rm(Get, ins, need)


library(shiny)
library(shinythemes)
library(shinydashboard)
library(ggplot2)
library(dplyr)
library(rlang)
library(data.table)
library(stringi)
library(Cairo)
library(RcppRoll)
library(tidyr)
library(lubridate)
library(pryr)
library(zoo)
library(sp)
library(leaflet)
library(rgdal)
library(RCurl)
library(tidyverse)
library(curl)
library(reticulate)