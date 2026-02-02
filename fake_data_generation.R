# Fake data generation for health data analysis
# This dataset is fully simulated for learning and demonstration purposes

set.seed(123)

n <- 300  # sample size

data <- data.frame(
  age = sample(18:65, n, replace = TRUE),
  gender = sample(c("Male", "Female"), n, replace = TRUE),
  education = sample(c("Primary", "Secondary", "Tertiary"), n, replace = TRUE),
  smoking_status = sample(c("Yes", "No"), n, replace = TRUE),
  outcome = sample(c(0, 1), n, replace = TRUE)
)

# Likert-scale items for reliability testing
data$item1 <- sample(1:5, n, replace = TRUE)
data$item2 <- sample(1:5, n, replace = TRUE)
data$item3 <- sample(1:5, n, replace = TRUE)
data$item4 <- sample(1:5, n, replace = TRUE)

head(data)
