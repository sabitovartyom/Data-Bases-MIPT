SELECT 
    ID,
    (703 * 1.0001092375 * weight / (height * height)) AS BMI,
    CASE
        WHEN (703 * 1.0001092375 * weight / (height * height)) < 18.5 THEN 'underweight'
        WHEN (703 * 1.0001092375 * weight / (height * height)) >= 18.5
             AND (703 * 1.0001092375 * weight / (height * height)) < 25 THEN 'normal'
        WHEN (703 * 1.0001092375 * weight / (height * height)) >= 25
             AND (703 * 1.0001092375 * weight / (height * height)) < 30 THEN 'overweight'
        WHEN (703 * 1.0001092375 * weight / (height * height)) >= 30
             AND (703 * 1.0001092375 * weight / (height * height)) < 35 THEN 'obese'
        WHEN (703 * 1.0001092375 * weight / (height * height)) >= 35 THEN 'extremely obese'
    END AS type
FROM
    public.hw
ORDER BY
    BMI DESC, ID DESC;