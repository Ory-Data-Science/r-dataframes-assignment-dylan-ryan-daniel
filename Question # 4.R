install.packages("dplyr")
library("tidyverse") # Necessary code for the read_csv
library(dplyr)

shrub_exp <- read.csv("shrub-volume-experiments-table.csv")

shrubs_all <- inner_join(shrubs,shrub_exp)
View(shrubs_all)