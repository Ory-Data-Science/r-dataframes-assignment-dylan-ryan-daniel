# Our code here is mean to find the mean volume of the shrubs by a given group, site and experiment, respectively.

shrub_data <- read.csv("shrub-volume-experiment.csv")

shrub_data %>%
  mutate(volume = length * width * height) %>%
  group_by(site) %>%
  summarize(mean_volume = mean(volume))

shrub_data %>%
  mutate(volume = length * width * height) %>%
  group_by(experiment) %>%
  summarize(mean_volume = mean(volume))