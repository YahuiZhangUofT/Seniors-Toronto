#### Preamble ####
# Purpose: Read in data from the Seniors Survey 2017, simulate
# A dataset that is randomly generated, and make tables
# Author: Yahui Zhang
# Date: 29 April 2022
# Prerequisites: Get Seniors Survey 2017 data from opendataToronto

#### Workspace set-up ####
install.packages("lubridate")
install.packages("janitor")

library(tidyverse) # A collection packages
library(janitor) # Clean datasets
library(tidyr) # Make tidy datasets

#### Simulate ####
# Simulation number one
# This simulation will simulate the number of respondents who use/do not use TTC frequently from the dataset Seniors Survey 2017
# The total number of respondents will be kept the same
# This simulation is totally randomized 
# This simulation will help improve the dataset because 'NA' are not included since we assume all 6939 respondents will answer our survey this time

simulated_frequent_TTC_data <-
  tibble(
    # Use 1 through to 6939 to represent each Respondent
    'Respondent' = 1:6939,
    # Randomly choose one of two options, with replacement, 6939 times
    'Employment status' = sample(
      x = c(
        'Yes', 
        'No'
      ),
      size = 6939,
      replace = TRUE
    ))

head(simulated_frequent_TTC_data)


#### Simulate ####
# Simulation number two
# This simulation will simulate the top concerns from the dataset Seniors Survey 2017
# The total number of respondents will be kept the same at 6939
# This simulation is totally randomized 

simulated_concerns_data <-
  tibble(
    # Use 1 through to 6939 to represent each Respondent
    'Respondent' = 1:6939,
    # Randomly choose one of ten options, with replacement, 6939 times
    'Top Concerns' = sample(
      x = c(
        'Accessibility', 
        'Civic Engagement',
        'Communication and Information',
        'Food Access',
        'Health Care and Home Care Services',
        'Housing Affordability and Availability',
        'Recreation and Community.Services',
        'Respect and Social.Inclusion',
        'Safety and Security',
        'Transportation Issues'
      ),
      size = 6939,
      replace = TRUE
    ))

head(simulated_concerns_data)


#### Simulate ####
# Simulation number three
# This simulation will simulate the employment status data from the dataset Seniors Survey 2017
# The total number of respondents will be kept the same
# This simulation is totally randomized 
# This simulation will help improve the dataset because 'NA' are not included since we assume all 6939 respondents will answer our survey this time

simulated_employment_data <-
  tibble(
    # Use 1 through to 6939 to represent each Respondent
    'Respondent' = 1:6939,
    # Randomly choose one of five options, with replacement, 6939 times
    'Employment status' = sample(
      x = c(
        'Employed full−time', 
        'Employed part−time', 
        'Retired', 
        'Unable to work for health or other reasons', 
        'Unemployed, looking for work',
      ),
      size = 6939,
      replace = TRUE
    ))

head(simulated_employment_data)


