library(psych)

# Select Likert-scale items
items <- data[, c("item1", "item2", "item3", "item4")]

# Reliability analysis
alpha_result <- psych::alpha(items)

alpha_result$total
