library(dplyr)

# Chi-square test between smoking and outcome
table_smoking <- table(data$smoking_status, data$outcome)
chisq.test(table_smoking)

# Logistic regression
model <- glm(
  outcome ~ age + gender + education + smoking_status,
  data = data,
  family = binomial
)

summary(model)

# Adjusted Odds Ratios (AOR)
exp(cbind(OR = coef(model), confint(model)))
