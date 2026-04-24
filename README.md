# 🫀 Cardiovascular Disease Risk Analysis (End-to-End Project)

## 📌 Overview
This project presents a complete end-to-end data analytics pipeline to analyze cardiovascular disease risk using a real-world dataset (~70,000 patient records). The focus is on identifying key risk factors and building actionable insights for healthcare decision-making.

---

## 🎯 Objective
To analyze how demographic, medical, and lifestyle factors influence cardiovascular disease and to identify high-risk patient groups using data-driven techniques.

---

## 🔄 Project Workflow

### 📥 1. Data Collection
- Dataset downloaded from Kaggle (Cardiovascular Disease dataset)
- Contains ~70,000 patient records with medical and lifestyle features

---

### 📊 2. Data Understanding
- Created a **Data Dictionary** using Google Sheets
- Defined each variable, data type, and business meaning

---

### 🧹 3. Data Cleaning & Preprocessing (Excel)
- Cleaned raw dataset using Excel
- Handled missing values, inconsistencies, and formatting issues
- Performed feature engineering:
  - BMI calculation
  - Age grouping
- Created:
  - Cleaned dataset
  - Data profiling sheet
  - Excel-based EDA report

---

### 📄 4. Documentation & KPI Design
- Defined KPIs and analysis goals
- Created:
  - Problem Statement
  - KPI List
  - EDA Summary Report

---

### 🐍 5. Python Analysis (Jupyter Notebook)
- Loaded cleaned dataset into Python
- Performed:
  - Additional feature engineering
  - Outlier detection (BMI)
  - Exploratory Data Analysis
  - Statistical Testing:
    - Hypothesis Testing
    - ANOVA
- Generated final analytical insights

---

### 🗄️ 6. SQL Analysis
- Imported final dataset into SQL
- Wrote queries to extract KPIs and insights
- Performed structured data analysis

---

### 📊 7. Power BI Dashboard
Built a multi-page interactive dashboard:

#### 🔹 Page 1: Executive Overview
- Overall disease rate
- Age, gender, and lifestyle analysis

#### 🔹 Page 2: Clinical Deep Dive
- Blood Pressure analysis
- BMI impact
- Combined risk (BP + Cholesterol)
- What-if analysis

#### 🔹 Page 3: Risk Segmentation
- Risk scoring model (Low → Critical)
- Patient-level drill-through
- Data-driven recommendations

---

## 📈 Key Insights

- Nearly **50% of patients are at risk**
- **Blood Pressure is the strongest predictor**
- Risk increases significantly after **age 50**
- **Cholesterol and BMI amplify risk**
- Physical inactivity shows moderate impact
- Risk model shows clear progression:
  - Low → Medium → High → Critical (29% → 82%)

---

## 🧠 Recommendations

- Prioritize blood pressure monitoring and control
- Focus screening on patients aged 50+
- Target patients with combined risk factors (BP + Cholesterol)
- Promote lifestyle improvements (BMI & physical activity)

---

## 📁 Project Structure
Cardiovascular-Risk-Analysis/
│
├── 1_Data/
│ ├── cardio_raw.csv
│ ├── excel_cleaned_cardio_data.csv
│ ├── final_cardio_dataset.csv
│
├── 2_Data_Preprocessing/
│ ├── cardio_project.xlsx
│ ├── data_dictionary.xlsx
│
├── 3_SQL_Analysis/
│ ├── Cardio_KPIs.sql
│ ├── Cardio_detail_analysis.sql
│ ├── Cardio_BP_quartile_analysis.sql
│ ├── Cardio_view.sql
│
├── 4_Python_Analysis/
│ ├── Cardio_statistical_analysis.ipynb
│
├── 5_Dashboard/
│ ├── 01_Executive_Overview.png
│ ├── 02_Clinical_Deep_Dive.png
│ ├── 03_Risk_&_Recommendations.png
│ ├── 04_Detail_Recommendation.png
│
├── 6_Documentation/
│ ├── Excel_EDA_Report.pdf
│ ├── KPI_list.pdf
│ ├── Problem_statement.pdf
│
└── README.md
---

## 📌 Conclusion

This project demonstrates how combining Excel, SQL, Python, and Power BI can create a complete analytics pipeline. The analysis highlights that clinical factors like blood pressure, along with age and BMI, play a critical role in predicting cardiovascular disease.

---
## 📸 Dashboard Preview
### Executive Overview
![Executive Overview](5_Dashboard/01_Executive_Overview.png)

### Clinical Deep Dive
![Clinical Deep Dive](5_Dashboard/02_Clinical_Deep_Dive.png)

### Risk & Recommendations
![Risk & Recommendations](5_Dashboard/03_Risk_&_Recommendations.png)

### Detailed Recommendations
![Detailed Recommendations](5_Dashboard/04_Detail_Recommendation.png)

## Note: Excel files are included for preprocessing steps. CSV versions are provided for easy viewing.
