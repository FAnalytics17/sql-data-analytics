--using string functions to remove unwanted character


SELECT DISTINCT
	Country_name,
    LENGTH(Country_name) AS string_length,
    POSITION('(' IN Country_name) AS new_string_length,
    RTRIM(LEFT(Country_name, POSITION('(' IN Country_name)-1)) AS new_country_name,
    LENGTH(RTRIM(LEFT(Country_name, POSITION('(' IN Country_name)-1))) AS new_country_length
FROM united_nations.access_to_basic_services
WHERE Country_name LIKE '%(%' ;
