-- calculate average population per subregion
--order by time period to find our running averages

SELECT 
Sub_region,
Country_name,
Time_period,
ROUND(AVG(Est_population_in_millions) OVER (PARTITION BY Sub_region
											ORDER BY Time_period),2) AS average_per_subregion
FROM united_nations.access_to_basic_services
WHERE 
	Est_population_in_millions IS NOT NULL
ORDER BY Sub_region;
