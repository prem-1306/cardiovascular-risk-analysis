-- OVERALL KPI VIEW
CREATE VIEW overall_kpi AS
SELECT
    COUNT(*) AS total_patients,
    SUM(cardio) AS total_disease_cases,
    ROUND(AVG(cardio)*100::numeric,2) AS total_disease_percentage,
    ROUND(AVG(age_years)::numeric,1) AS avg_age,
    ROUND(AVG(BMI)::numeric,1) AS avg_bmi,
    ROUND(AVG(ap_hi)::numeric,1) AS avg_systolic_bp,
    ROUND(AVG(pulse_pressure)::numeric,1) AS avg_pulse_pressure
FROM cardio_data;

-- RISK SEGMENTATION VIEW
CREATE VIEW risk_analysis AS
SELECT 
    risk_segmentation,
    COUNT(*) AS total_patients,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS population_percentage,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage,
    ROUND(AVG(risk_score)::numeric,2) AS avg_risk_score
FROM cardio_data
GROUP BY risk_segmentation;

-- AGE ANALYSIS VIEW
CREATE VIEW age_analysis AS
SELECT 
    age_group,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM cardio_data
GROUP BY age_group;

-- BP ANALYSIS VIEW
CREATE VIEW bp_analysis AS
SELECT 
    bp_category,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage,
    ROUND(AVG(ap_hi)::numeric,1) AS avg_systolic_bp
FROM cardio_data
GROUP BY bp_category;


-- BMI ANALYSIS VIEW
CREATE VIEW bmi_analysis AS
SELECT 
    bmi_category,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage,
    ROUND(AVG(BMI)::numeric,1) AS avg_bmi
FROM cardio_data
GROUP BY bmi_category;

-- LIFESTYLE VIEW
CREATE VIEW lifestyle_analysis AS
SELECT 
    active_label,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM cardio_data
GROUP BY active_label;