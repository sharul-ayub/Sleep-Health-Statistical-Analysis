# 04_inferential_analysis.R

library(EnvStats)
library(vcd)

# Load cleaned data
dt1_cleaned <- readRDS("data/dt1_cleaned.rds")

# =========================
# Case 1: Doctor vs Salesperson
# =========================

doctors <- dt1_cleaned$Sleep.Duration[dt1_cleaned$Occupation == "Doctor"]
salespersons <- dt1_cleaned$Sleep.Duration[dt1_cleaned$Occupation == "Salesperson"]

rosner_doctors <- rosnerTest(doctors, k = 5)
rosner_sales <- rosnerTest(salespersons, k = 5)
print(rosner_doctors)
print(rosner_sales)

shapiro.test(doctors)
shapiro.test(salespersons)

wilcox.test(doctors, salespersons, alternative = "less")

# =========================
# Case 2: Physical Activity vs Stress Level
# =========================

rosner_test_activity <- rosnerTest(dt1_cleaned$Physical.Activity.Level, k = 5)
rosner_test_stress <- rosnerTest(dt1_cleaned$Stress.Level, k = 5)
print(rosner_test_activity)
print(rosner_test_stress)

shapiro.test(dt1_cleaned$Physical.Activity.Level)
shapiro.test(dt1_cleaned$Stress.Level)

cor.test(
  dt1_cleaned$Physical.Activity.Level,
  dt1_cleaned$Stress.Level,
  method = "spearman",
  exact = FALSE
)

# =========================
# Case 3: Gender vs Sleep Disorder
# =========================

case3_table <- table(dt1_cleaned$Gender, dt1_cleaned$Sleep.Disorder)

chi_test <- chisq.test(case3_table)
print(chi_test)

mosaicplot(
  case3_table,
  shade = TRUE,
  color = TRUE,
  main = "Association between Gender and Sleep Disorder",
  xlab = "Gender",
  ylab = "Sleep Disorder"
)
