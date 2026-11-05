SELECT 
	eco.Country_name,
    eco.Time_period,
    eco.Est_population_in_millions,
    geo.Land_area
FROM economic_indicators AS eco

INNER JOIN geographic_location AS geo

ON eco.Country_name=geo.Country_name
WHERE geo.Land_area < ( SELECT
							AVG(Land_area)
                            FROM geographic_location
                             )
AND eco.Time_period = 2020

AND eco.Est_population_in_millions > (SELECT
										AVG(Est_population_in_millions)
                                        FROM economic_indicators
                                        WHERE Time_period = 2020)
                                        ;
