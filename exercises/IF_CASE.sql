--group countries according to income per year by calculating GDP per capita
--capita is greek for person or head
--GDP per capita is, total GDP/ countries_population

SELECT 
Country_name,
Time_period,
CAST(Est_population_in_millions AS DECIMAL (5,2)) AS Est_population_in_millions,
CAST(Est_gdp_in_billions AS DECIMAL (7,2)) AS Est_gdp_in_billions,
(Est_gdp_in_billions/Est_population_in_millions)*1000  AS annual_GPD_per_person,
CAST((Est_gdp_in_billions/Est_population_in_millions)*(1000/365) AS DECIMAL(5,2))  AS daily_usage_per_person,
IF(Time_period<2020, 2.4, 1.12) AS Poverty_line,
CASE
	/*daily_usage_per_person*/
    WHEN CAST((Est_gdp_in_billions/Est_population_in_millions)*(1000/365) AS DECIMAL(5,2))  <IF(Time_period<2020, 2.4, 1.12) THEN 'Low_income'
	/*povertyline*/
    WHEN CAST((Est_gdp_in_billions/Est_population_in_millions)*(1000/365) AS DECIMAL(5,2))  <IF(Time_period<2020, 2.4, 1.12) THEN 'High_income'
    ELSE 'Middle_class'
    END AS civil_class
FROM united_nations.access_to_basic_services
WHERE Est_gdp_in_billions AND Est_population_in_millions IS NOT NULL
;
