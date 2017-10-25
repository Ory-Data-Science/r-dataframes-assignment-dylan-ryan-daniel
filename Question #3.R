install.packages("dplyr")
library("tidyverse") # Necessary code for the read_csv
library(dplyr)

help(package = dplyr)

survey_data <- read_csv('shrub-volume-experiment.csv')

filtered_data <- (survey_data[ , 2] == 1) # Basically determines which rows has a value of 1 
print(filtered_data) # Tells you if it is TRUE/FALSE

experiment_number <- (survey_data[filtered_data , ]) # This lines only prints out the data that is true
print(experiment_number) 


experiment_one_avg <- (colMeans(experiment_number[ , 5], na.rm = FALSE, dims = 1)) # This line calculates the mean
# print(experiment_one_avg) # prints out the average to check.

filtered_data <- (survey_data[ , 2] == 2) # Basically determines which rows has a value of 2
experiment_number <- (survey_data[filtered_data , ])

experiment_two_avg <- (colMeans(experiment_number[ , 5], na.rm = FALSE, dims = 1))
# print(experiment_two_avg)

filtered_data <- (survey_data[ , 2] == 3) # Basically determines which rows has a value of 3
experiment_number <- (survey_data[filtered_data , ])

experiment_three_avg <- (colMeans(experiment_number[ , 5], na.rm = FALSE, dims = 1))
# print(experiment_three_avg)

E = matrix( c(1, 2, 3), nrow=3, ncol=1)
print(E)

avg_height = matrix( c(experiment_one_avg, experiment_two_avg, experiment_three_avg), nrow = 3 , ncol = 1)
## print(avg_height)

output_one <- cbind(E, avg_height)
colnames(output_one) <- c("experiment","avg_height")
print(output_one) 

## print(survey_data)
site_one <-  survey_data[survey_data$site == 1,] # This line here only takes survey data with a site value of 1 takes true/false values
## print(site_one)

## print(max(site_one$height))

site_two <-  survey_data[survey_data$site == 2,] # This line here only takes survey data with a site value of 1 takes true/false values

site_three <-  survey_data[survey_data$site == 3,] # This line here only takes survey data with a site value of 1 takes true/false values

site_four <-  survey_data[survey_data$site == 4,] # This line here only takes survey data with a site value of 1 takes true/false values

M = matrix( c(1, 2, 3, 4), nrow = 4, ncol = 1)

max_height = matrix( c(max(site_one$height), max(site_two$height), max(site_three$height), max(site_four$height)), nrow = 4 , ncol = 1)

output_two <- cbind(M, max_height)
colnames(output_two) <- c("site","max_height")
print(output_two) 

# This is so Question 3 is separate
# Ryan was here

