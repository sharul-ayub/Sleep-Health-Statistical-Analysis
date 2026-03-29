# Sleep Health Statistical Analysis Using R

## Project Overview
This project applies statistical computing and data mining techniques to analyze a Sleep Health dataset, with the objective of understanding how lifestyle and demographic factors influence sleep outcomes.

The analysis focuses on data preprocessing, visualization, and hypothesis testing using R. The project is structured as a reproducible analytical pipeline, enabling end-to-end execution from raw data to statistical insights.

---

## Business / Research Problem
Sleep health is a critical determinant of physical and mental well-being. However, modern lifestyles introduce factors such as stress, irregular routines, and varying activity levels that may influence sleep quality.

This project aims to:
- Identify patterns in sleep behavior
- Evaluate relationships between lifestyle variables and sleep outcomes
- Test statistical claims using appropriate inferential methods

---

## Dataset
- **Name**: Sleep Health Dataset  
- **Initial Size**: 374 observations, 10 variables  
- **Cleaned Size**: 346 observations (after removing missing values)  
- **Missing Value Encoding**: `-1` treated as NA  

### Key Variables
- Sleep Duration  
- Quality of Sleep  
- Physical Activity Level  
- Stress Level  
- Sleep Disorder  
- Occupation  
- Gender  

---

## Methodology

### 1. Data Preprocessing
- Converted incorrect data types into appropriate formats (factor, numeric, integer)
- Replaced placeholder values (`-1`) with missing values (NA)
- Removed incomplete observations using `na.omit()`

### 2. Exploratory Data Analysis
Visualizations were generated to understand distribution and patterns:
- Boxplot of stress levels
- Histogram of sleep quality
- Pie chart of sleep disorder distribution
- Bar chart of occupation distribution

### 3. Statistical Analysis

#### Case Study 1: Occupational Sleep Duration
- Test: Wilcoxon Rank-Sum Test  
- Objective: Compare sleep duration between doctors and salespersons  
- Result: No statistically significant difference  

#### Case Study 2: Physical Activity vs Stress
- Test: Spearman Rank Correlation  
- Objective: Assess relationship between activity level and stress  
- Result: No significant correlation detected  

#### Case Study 3: Gender vs Sleep Disorder
- Test: Chi-Square Test of Independence  
- Objective: Evaluate association between gender and sleep disorder  
- Result: Statistically significant association identified  

---

## Key Findings
- Majority of individuals do not exhibit sleep disorders (~58%)
- Sleep quality is generally moderate to high (scores concentrated between 6–9)
- No significant relationship between:
  - Physical activity and stress levels
  - Occupation and sleep duration
- A strong association exists between gender and sleep disorder patterns

---

### Visual Results

#### Stress Level Distribution
<p align="center">
  <img src="images/boxplot_stress_level.png" alt="Boxplot showing distribution of stress levels" width="500"/>
</p>

**Interpretation:**  
Stress levels are moderately distributed, with values ranging from 3 to 8. The median is 5, and the middle 50% of observations lie between 4 and 7. This indicates that most individuals experience moderate stress levels, with no extreme outliers observed.


#### Sleep Disorder Distribution
<p align="center">
  <img src="images/pie_sleep_disorder.png" alt="Pie chart showing distribution of sleep disorders" width="500"/>
</p>

**Interpretation:**  
The majority of individuals (58.4%) do not experience any sleep disorder. Among those affected, Sleep Apnea is the most prevalent (22%), followed by Insomnia (19.7%). This suggests that while most individuals have normal sleep patterns, a notable proportion experience clinically relevant sleep conditions.


#### Quality of Sleep Distribution
<p align="center">
  <img src="images/histogram_sleep_quality.png" alt="Histogram showing distribution of sleep quality scores" width="500"/>
</p>

**Interpretation:**  
Sleep quality is concentrated in the higher range, with peaks at scores of 6, 8, and 9. The highest frequency occurs at score 8, indicating that many individuals report good sleep quality. Overall, the distribution suggests that most participants experience moderate to high sleep quality.


#### Occupation Distribution
<p align="center">
  <img src="images/bar_occupation.png" alt="Bar chart showing distribution of occupations" width="500"/>
</p>

**Interpretation:**  
The dataset is dominated by healthcare and technical professions, with Nurses (73), Doctors (71), and Engineers (63) representing the largest groups. This concentration suggests that insights derived from the analysis may be more reflective of these occupational categories.

## Project Structure

```bash
Sleep-Health-Statistical-Analysis/
├── data/
│   ├── Sleep_Health.csv
│   └── dt1_cleaned.rds
├── scripts/
│   ├── 01_data_overview.R
│   ├── 02_data_cleaning.R
│   ├── 03_visualization.R
│   ├── 04_inferential_analysis.R
├── images/
├── run_analysis.R
└── README.md
