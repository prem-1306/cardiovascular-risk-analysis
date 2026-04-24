-- OVERALL KPIS

SELECT
	COUNT(*) AS total_patients,
	SUM(cardio) AS total_disease_cases,
	ROUND(AVG(cardio)*100::numeric,2) AS total_disease_percentage,
	ROUND(AVG(age_years)::numeric,1) AS avg_age,
	ROUND(AVG(BMI)::numeric,1) AS avg_bmi,
	ROUND(AVG(ap_hi)::numeric,1) AS avg_systolic_bp,
	ROUND(AVG(pulse_pressure)::numeric,1) AS avg_pulse_pressure
FROM cardio_data;


-- SEGMENT KPIs

--👉 Male vs Female disease %
SELECT 
	gender_label,
	COUNT(*) AS total,
	ROUND(AVG(cardio)*100::numeric,1) AS disease_percentage
FROM cardio_data
GROUP BY gender_label;


--👉 Active vs Inactive
SELECT 
    active_label,
    COUNT(*) AS total,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM cardio_data
GROUP BY active_label;

--👉 BP Risk distribution
SELECT 
    bp_category,
    COUNT(*) AS total,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM cardio_data
GROUP BY bp_category;


-- Population Share By Risk Segmentation
SELECT 
	risk_segmentation,
		COUNT(*) AS total_patients,
		ROUND(COUNT(*)*100.0/SUM(COUNT(*)) OVER(),2) as population_percentage
FROM cardio_data
GROUP BY risk_segmentation
ORDER BY
CASE 
	WHEN risk_segmentation = 'Low' THEN 1
	WHEN risk_segmentation = 'Medium' THEN 2  
    WHEN risk_segmentation = 'High' THEN 3  
    WHEN risk_segmentation = 'Critical' THEN 4  
END;


-- Disease Percentage By Risk Segmentation
SELECT 
    risk_segmentation,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage,
    ROUND(AVG(risk_score)::numeric,2) AS avg_risk_score
FROM cardio_data
GROUP BY risk_segmentation
ORDER BY 
    CASE 
        WHEN risk_segmentation = 'Low' THEN 1
        WHEN risk_segmentation = 'Medium' THEN 2
        WHEN risk_segmentation = 'High' THEN 3
        WHEN risk_segmentation = 'Critical' THEN 4
    END;