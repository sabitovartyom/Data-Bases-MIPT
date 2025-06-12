SELECT COUNT(*) AS underweight_count
FROM (
    SELECT 703 * 1.0001092375 * weight / (height * height) AS bmi
    FROM public.hw
)
WHERE bmi < 18.5;