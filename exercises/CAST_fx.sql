--using cast to temporarily convert data types to less decimal places for readability and efficiency
-- for permanent column data type conversion use ALTER TABLE
--CAST(column name AS DECIMAL(precision, decimal places)
-- precision is total number of intergers
--decimal is number after decimal place

SELECT DISTINCT
Country_name,
Time_period,
CAST(Est_population_in_millions AS DECIMAL(4,2)) AS est_pop_in_millions


FROM united_nations.access_to_basic_services
WHERE Est_population_in_millions
ORDER BY est_pop_in_millions DESC
;
