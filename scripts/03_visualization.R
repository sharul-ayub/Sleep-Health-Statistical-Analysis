# 03_visualization.R

library(ggplot2)

# Load cleaned data
dt1_cleaned <- readRDS("data/dt1_cleaned.rds")

# Boxplot: Stress Level
ggplot(dt1_cleaned, aes(y = Stress.Level)) +
  geom_boxplot(fill = "steelblue") +
  labs(title = "Boxplot of Stress Level", y = "Stress Level") +
  theme(plot.title = element_text(hjust = 0.5))

# Pie Chart: Sleep Disorder Distribution
sleep_dist <- as.data.frame(table(dt1_cleaned$Sleep.Disorder))
colnames(sleep_dist) <- c("SleepDisorder", "Count")
sleep_dist$Percentage <- round(100 * sleep_dist$Count / sum(sleep_dist$Count), 1)

gradient_colors <- colorRampPalette(c("darkblue", "skyblue", "blue"))(length(sleep_dist$Count))

pie(
  sleep_dist$Count,
  labels = paste0(sleep_dist$SleepDisorder, " (", sleep_dist$Percentage, "%)"),
  main = "Sleep Disorder Distribution",
  col = gradient_colors
)

# Histogram: Quality of Sleep
ggplot(dt1_cleaned, aes(x = Quality.of.Sleep)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "black", boundary = 0.5) +
  scale_x_continuous(breaks = 1:10) +
  labs(title = "Histogram of Quality of Sleep", x = "Quality of Sleep", y = "Frequency") +
  theme(plot.title = element_text(hjust = 0.5))

# Bar Chart: Occupation Distribution
ggplot(dt1_cleaned, aes(x = Occupation)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Distribution by Occupation", x = "Occupation", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(plot.title = element_text(hjust = 0.5))
