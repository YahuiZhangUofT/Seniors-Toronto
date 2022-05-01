#### Preamble ####
# Purpose: Clean senior survey data from open data Toronto
# Author: Yahui Zhang
# Date: 10 April 2022
# Contact: yahui.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#### Workspace setup ####

library(opendatatoronto)
library(dplyr)
library(bookdown)
library(datasets)
library(dplyr)
library(ggplot2)
library(readr)
library(tidyverse)
library(tinytex)

# get package
package <- show_package("bb848677-0817-4e6a-b229-6d40b0cdde19")
package

# get all resources for this package
resources <- list_package_resources("bb848677-0817-4e6a-b229-6d40b0cdde19")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('xlsx', 'geojson'))

# load the first datastore resource as a sample
Senior_raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
Senior_raw_data

#change column name for participation in physical activity
colnames(Senior_raw_data)[1] <- "Physical_activity"

#change column name for if the seniors are aware of free programs offered by the government
colnames(Senior_raw_data)[2] <- "free_programs"

#change column name for the frequency of using the internet
colnames(Senior_raw_data)[4] <- "frequency_internet"

#change column name for the frequency of participation in volunteer or charity work
colnames(Senior_raw_data)[5] <- "participation_volunteer"

#Change column names for frequent modes of transportation 
colnames(Senior_raw_data)[6] <- "TTC"
colnames(Senior_raw_data)[7] <- "Walk"
colnames(Senior_raw_data)[8] <- "Drive"
colnames(Senior_raw_data)[9] <- "Cycle"
colnames(Senior_raw_data)[10] <- "Taxi"
colnames(Senior_raw_data)[11] <- "Community program"
colnames(Senior_raw_data)[12] <- "Wheel-Trans"
colnames(Senior_raw_data)[13] <- "Rides from others"

#Change column names for whether frequently use TTC
colnames(Senior_raw_data)[14] <- "Frequently_use_TTC"

#Change column names for reasons seniors do not use TTC
colnames(Senior_raw_data)[15] <- "Other services"
colnames(Senior_raw_data)[16] <- "Driving is faster"
colnames(Senior_raw_data)[17] <- "Prefer driving"
colnames(Senior_raw_data)[18] <- "Not affordable"
colnames(Senior_raw_data)[19] <- "Distance"
colnames(Senior_raw_data)[20] <- "Stations not accessible"
colnames(Senior_raw_data)[21] <- "Vehicles not accessible"
colnames(Senior_raw_data)[22] <- "Crowded"
colnames(Senior_raw_data)[23] <- "Announcement hard to hear"
colnames(Senior_raw_data)[24] <- "Not safe"

#Change column names for home repairs delays due to affordability 
colnames(Senior_raw_data)[25] <- "Major repairs"
colnames(Senior_raw_data)[26] <- "Accessible modification"
colnames(Senior_raw_data)[27] <- "No"

#Change column names for difficulty paying bills 
colnames(Senior_raw_data)[28] <- "difficulty"

#Change column names for top three concerns 
colnames(Senior_raw_data)[37] <- "Accessibility"
colnames(Senior_raw_data)[38] <- "Civic Engagement"
colnames(Senior_raw_data)[39] <- "Communication and Information"
colnames(Senior_raw_data)[40] <- "Food Access"
colnames(Senior_raw_data)[41] <- "Health Care and Home Care Services"
colnames(Senior_raw_data)[42] <- "Housing Affordability and Availability"
colnames(Senior_raw_data)[43] <- "Income and Employment"
colnames(Senior_raw_data)[44] <- "Recreation and Community Services"
colnames(Senior_raw_data)[45] <- "Respect and Social Inclusion"
colnames(Senior_raw_data)[46] <- "Safety and Security"
colnames(Senior_raw_data)[47] <- "Transportation Issues"

#Change column names for the sources to learn about government services
colnames(Senior_raw_data)[48] <- "City of Toronto website"
colnames(Senior_raw_data)[49] <- "Internet search engine"
colnames(Senior_raw_data)[50] <- "Calling 311"
colnames(Senior_raw_data)[51] <- "Calling 211"
colnames(Senior_raw_data)[52] <- "Local ward councillor"
colnames(Senior_raw_data)[53] <- "Service directory"
colnames(Senior_raw_data)[54] <- "Posters, etc."
colnames(Senior_raw_data)[55] <- "Workers in community"
colnames(Senior_raw_data)[56] <- "Faith group"
colnames(Senior_raw_data)[57] <- "Word of mouth"

#Change column names for if there is people who the seniors can call for help
colnames(Senior_raw_data)[58] <- "people_help"

#Change column names for employment status
colnames(Senior_raw_data)[60] <- "employment_status"

#Change column names for gender
colnames(Senior_raw_data)[61] <- "gender"

#Change column names for understanding English
colnames(Senior_raw_data)[63] <- "Understand spoken English"
colnames(Senior_raw_data)[64] <- "Speak"
colnames(Senior_raw_data)[65] <- "Read"
colnames(Senior_raw_data)[66] <- "None"

#Change column names for the language seniors feel most comfortable to receive services
colnames(Senior_raw_data)[67] <- "service_language"

#Change column names for age group
colnames(Senior_raw_data)[69] <- "age_group"

#Save clean data
write_csv(Senior_raw_data, "Senior_clean_data.csv")



