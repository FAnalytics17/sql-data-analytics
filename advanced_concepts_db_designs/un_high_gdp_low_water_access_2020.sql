--Add query for above-average GDP countries with low water access in 2020


SELECT 
		eco.Country_name,
        eco.Time_period,
		eco.Est_gdp_in_billions,
        bs.Pct_managed_drinking_water_services AS access_water

FROM economic_indicators AS eco

INNER JOIN basic_services AS bs
ON eco.Country_name=bs.Country_name
AND eco.Time_period = bs.Time_period

WHERE 
eco.Est_gdp_in_billions > (SELECT 
							AVG(Est_gdp_in_billions)
							 FROM economic_indicators
								WHERE Time_period = 2020
							)
AND bs.Pct_managed_drinking_water_services < 90 
AND eco.Time_period = 2020
;
					

