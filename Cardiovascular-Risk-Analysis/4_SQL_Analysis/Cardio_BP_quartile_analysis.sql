-- BP Quartile Analysis
SELECT 
    bp_quartile,
    COUNT(*) AS total_patients,
    ROUND(AVG(cardio)*100::numeric,2) AS disease_percentage
FROM (
    SELECT 
        cardio,
        NTILE(4) OVER (ORDER BY ap_hi DESC) AS bp_quartile
    FROM cardio_data
) t
GROUP BY bp_quartile
ORDER BY bp_quartile;