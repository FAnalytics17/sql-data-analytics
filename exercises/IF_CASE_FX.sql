-- categorise origin of people 
SELECT 

Sub_region,
Country_name,
IF(Pct_unemployment IS NULL, 'No_employment_records', Pct_unemployment) AS unemployment_rate,
CASE 
	WHEN Country_name IN ('aLGERIA', 'EGYPT', 'LIBYA', 'MOROCCO', 'TUNISIA') THEN 'Waarabu'
    WHEN Country_name IN ('KENYA', 'UGANDA','TANZANIA', 'CONGO', 'BURUNDI') THEN 'WAKONGO_HAWA'
    ELSE 'WESTERNERS'
    END AS origin_of_the_pple



 FROM united_nations.access_to_basic_services
 WHERE Sub_Region LIKE '%AFRICA%'
 AND Time_period = 2020
 ORDER BY origin_of_the_pple;
