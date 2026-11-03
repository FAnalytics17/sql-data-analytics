--Add subquery to calculate Caribbean countries' share of land area
SELECT 
Sub_region,
Country_name,
ROUND(Land_area/ (SELECT
	 SUM(Land_area)
FROM access_to_basic_services
WHERE Time_period = 2020
AND Sub_region LIKE '%Caribbean%'
					
				) * 100) AS pct_pie

FROM united_nations.access_to_basic_services
WHERE Time_period = 2020

AND Sub_region LIKE '%Caribbean%'
