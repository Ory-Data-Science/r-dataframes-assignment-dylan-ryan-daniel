install.packages("dplyr")
library("tidyverse") # Necessary code for the read_csv
library(dplyr)

help(package = dplyr)

survey_data <- read_csv('shrub-volume-experiment.csv')

print(names(survey_data)) # This checks out the column names of the data.\
print(str(survey_data))
print(head(survey_data)) # This prints out the first few rows

# survey_data %>%
 # select("length") # select allows you to select a certain column

print(survey_data[ , 3]) # This is a way to print out a particular
                         # column (another way)

print(survey_data [ , 1:2]) # This line will print out the first two
                            # columns. 
                            # This is [row, column]


filtered_data <- (survey_data[ , 5] > 5)
# Filtered_data only keeps the rows where the height is more than 5
# print(filtered_data) # This is just to test the value
print(survey_data[filtered_data , ])  #By assigning a new variable you 
# are able to print out only the filtered rows properly.

survey_data$volume <- (survey_data$length * survey_data$width * survey_data$height)
print(survey_data)

