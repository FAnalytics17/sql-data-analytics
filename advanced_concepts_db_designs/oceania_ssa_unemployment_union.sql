SELECT
loc.Country_name,
loc.Region,
eco.Time_period,
IFNULL(eco.Pct_unemployment, 4.98) AS  Pct_unemployment

FROM united_nations.geographic_location AS loc
LEFT JOIN 
		united_nations.economic_indicators AS eco
ON loc.Country_name = eco.Country_name
WHERE Region LIKE 'Oceania'

UNION

SELECT
loc.Country_name,
loc.Region,
eco.Time_period,
IFNULL(eco.Pct_unemployment, 33.95) AS  Pct_unemployment

FROM united_nations.geographic_location AS loc
LEFT JOIN 
		united_nations.economic_indicators AS eco
ON loc.Country_name = eco.Country_name
WHERE Region LIKE 'SUB-Saharan Africa'    


