SELECT 
Sub_region,
Country_name,
Land_area,
SUM(Land_area) OVER( 
			PARTITION BY Sub_region) AS total_land_area_per_subregion,
ROUND(Land_area/SUM(Land_area) OVER( 
			PARTITION BY Sub_region)*100) AS pct_country_share


FROM united_nations.access_to_basic_services
WHERE 
Time_period = 2020
AND Land_area IS NOT NULL;
