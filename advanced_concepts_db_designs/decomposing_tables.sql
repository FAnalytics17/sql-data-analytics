INSERT INTO united_nations.geographic_location(Country_name,Sub_region,Region,Land_area)

SELECT 
		Country_name,
		Sub_region,
        Region,
        AVG(Land_area) AS Land_area
FROM 
	united_nations.access_to_basic_services
GROUP BY Country_name,
		 Sub_region,
         Region;
