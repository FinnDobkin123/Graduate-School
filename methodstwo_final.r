library(tidyverse)
library(rvest)
library(readr)
library(RCurl)

##Eviction Lab Data
#Scrape from URL
url <- "https://eviction-lab-data-downloads.s3.amazonaws.com/CA/tracts.csv"
download <- getURL(url)
eviction_data <- read.csv(text = download)

##Opportunity Insights Data
#Scrape from URL
url <- "file:///Users/finndobkin/Downloads/tract_covariates.csv"
neighborhood_characteristics <- read.csv(file = url)
url <- "file:///Users/finndobkin/Downloads/health_ineq_online_table_12%20.csv"
tax_rate <- read.csv(file = url)

##CalEnviroScreen data 
#Scrape from URL
url <- "https://oehha.ca.gov/media/downloads/calenviroscreen/document/ces3results.xlsx"
data1 <- openxlsx::read.xlsx(url)
temp <- tempfile()
download.file(url, destfile = temp, mode = 'wb')
data2 <- openxlsx::read.xlsx(temp)
unlink(temp)
stopifnot(all.equal(data1, data2))
