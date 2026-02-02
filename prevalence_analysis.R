library(dplyr)

# Prevalence of outcome
prevalence <- data %>%
  count(outcome) %>%
  mutate(prevalence = n / sum(n) * 100)

prevalence
