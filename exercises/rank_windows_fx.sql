-- rank countries based on access to water, so that limited resources are utilized in this places
SELECT 
Sub_region,
Country_name,
Pct_managed_drinking_water_services,
RANK() OVER (PARTITION BY Time_period
										ORDER BY Pct_managed_drinking_water_services ASC) AS rank_of_water_services
FROM united_nations.access_to_basic_services
WHERE 
	Pct_managed_drinking_water_services IS NOT NULL
;
