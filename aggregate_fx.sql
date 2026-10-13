-- GROUP BY, HAVING, ORDER BY syntax
SELECT 
Region,
Sub_region,
MIN(Est_population_in_millions) AS lowest_populated,
MAX(Est_population_in_millions) AS highest_populate,
AVG(Est_population_in_millions) AS average_population,
COUNT(DISTINCT Country_name) AS number_of_countries

FROM united_nations.access_to_basic_services

GROUP BY Region,Sub_region
HAVING average_population < 25
ORDER BY average_population ASC;

-- HAVING is similar to WHERE difference is HAVING can be used in aggregate function as a post filter while WHERE can be used as pre filter.
