--Add CTE for Eastern Africa countries with low water access and below-average GDP

/*Build a CTE for 2020 Eastern Africa countries that selects water and
sanitation access and Est_gdp_in_billions, and uses AVG() OVER
(PARTITION BY Sub_region) to compute the sub-region average GDP. Filter
to countries with managed drinking water access below 60% and GDP below
that sub-region average.*/



WITH
		subregionGDP AS (SELECT 
							Country_name,
							Sub_region,
							Pct_managed_drinking_water_services AS access_water,
							Pct_managed_sanitation_services AS access_services,
                            Est_gdp_in_billions,
							AVG(Est_gdp_in_billions) OVER(PARTITION BY Sub_region) AS subregionAVG_GDP

							FROM united_nations.access_to_basic_services
							WHERE Sub_region LIKE 'EASTERN AFRICA'
                            AND Time_period = 2020
						)

SELECT *
FROM subregionGDP
WHERE access_water <60
AND Est_gdp_in_billions < subregionAVG_GDP
;
