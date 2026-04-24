-- AGE-WISE DISEASE TREND
SELECT 
	age_group,
	COUNT(*) AS total_patients,
	ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM cardio_data
GROUP BY age_group
ORDER BY age_group;

-- BP IMPACT
SELECT 
    bp_category,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage,
    ROUND(AVG(ap_hi)::numeric,1) AS avg_systolic
FROM cardio_data
GROUP BY bp_category
ORDER BY 
    CASE 
        WHEN bp_category = 'Normal' THEN 1
        WHEN bp_category = 'Stage 1' THEN 2
		WHEN bp_category = 'Stage 2' THEN 3
        WHEN bp_category = 'Elevated' THEN 4
	END;


-- BMI category
SELECT 
    bmi_category,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage,
    ROUND(AVG(BMI)::numeric,1) AS avg_bmi
FROM cardio_data
GROUP BY bmi_category;

-- LIFESTYLE COMBINED IMPACT
SELECT 
    smoke_label,
    alco_label,
    active_label,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM cardio_data
GROUP BY smoke_label, alco_label, active_label
ORDER BY disease_percentage DESC
LIMIT 10;

-- HIGH RISK PATIENT EXTRACTION
SELECT 
    id,
    age_years,
    ap_hi,
    BMI,
    risk_score,
    risk_segmentation
FROM cardio_data
WHERE risk_segmentation = 'Critical'
ORDER BY risk_score DESC
LIMIT 20;

-- CORRELATION ANALYSIS
SELECT  
    ROUND(CORR(age_years, cardio)::numeric,3) AS age_corr,
    ROUND(CORR(ap_hi, cardio)::numeric,3) AS systolic_bp_corr,
    ROUND(CORR(ap_lo, cardio)::numeric,3) AS diastolic_bp_corr,
    ROUND(CORR(pulse_pressure, cardio)::numeric,3) AS pulse_pressure_corr,
    ROUND(CORR(BMI, cardio)::numeric,3) AS bmi_corr,
    ROUND(CORR(cholesterol, cardio)::numeric,3) AS cholesterol_corr,
    ROUND(CORR(gluc, cardio)::numeric,3) AS glucose_corr
FROM cardio_data;
