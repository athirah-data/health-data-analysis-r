library(dplyr)
library(ggplot2)

# Prevalence of outcome by smoking status
plot_data <- data %>%
  group_by(smoking_status, outcome) %>%
  summarise(n = n(), .groups = "drop") %>%
  group_by(smoking_status) %>%
  mutate(percent = n / sum(n) * 100)

ggplot(plot_data, aes(x = smoking_status, y = percent, fill = factor(outcome))) +
  geom_col(position = "dodge") +
  labs(
    title = "Outcome prevalence by smoking status",
    x = "Smoking status",
    y = "Percentage",
    fill = "Outcome"
  ) +
  theme_minimal()
