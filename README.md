# Sleep-Health-Statistical-Analysis
R-based statistical analysis of Sleep Health dataset including data cleaning, visualization, and inferential hypothesis testing.
# 💤 Sleep Health Statistical Analysis (R)

## 📖 Overview
This project analyzes the **Sleep Health dataset** to explore relationships between lifestyle factors, demographic variables, and sleep outcomes using statistical computing techniques in R.

The study includes:
- Data preprocessing and cleaning
- Exploratory data analysis (EDA)
- Data visualization
- Hypothesis testing using statistical methods

---

## 📂 Dataset

- **Dataset**: Sleep Health Dataset
- **Observations**: 374 (original), 346 (cleaned)
- **Features**: 10 variables

### Key Variables:
- Sleep Duration
- Quality of Sleep
- Physical Activity Level
- Stress Level
- Sleep Disorder
- Occupation
- Gender

> Missing values are encoded as `-1` and handled during preprocessing.

---

## ⚙️ Methodology

### 1. Data Cleaning
- Converted `-1` → NA
- Removed missing values
- Final dataset: 346 rows

### 2. Data Transformation
- Converted variables to appropriate types:
  - Factor (categorical)
  - Numeric / Integer

---

## 📊 Data Visualization

The following visualizations were created:

- 📦 Boxplot → Stress Level distribution  
- 🥧 Pie Chart → Sleep Disorder distribution  
- 📊 Histogram → Quality of Sleep  
- 📊 Bar Chart → Occupation distribution  

---

## 🔬 Statistical Analysis

### 📌 Case Study 1
**Question:** Do doctors sleep less than salespersons?

- Test: Wilcoxon Rank-Sum Test  
- Result: ❌ No significant difference (p > 0.05)

---

### 📌 Case Study 2
**Question:** Is there a relationship between physical activity and stress?

- Test: Spearman Correlation  
- Result: ❌ No significant relationship (p > 0.05)

---

### 📌 Case Study 3
**Question:** Is there an association between gender and sleep disorder?

- Test: Chi-Square Test  
- Result: ✅ Significant association (p < 0.05)

---

## 📈 Key Insights

- Majority of individuals have **no sleep disorder (~58%)**
- Sleep quality is generally **moderate to high (6–9 range)**
- No strong link between:
  - Physical activity and stress
  - Occupation and sleep duration
- Strong association found between:
  - Gender and sleep disorder

---

## 🛠 Tools Used

- R Programming
- ggplot2
- EnvStats
- vcd

---

## 📁 Project Structure

```bash
├── data/
├── scripts/
├── images/
├── results/
├── README.md
