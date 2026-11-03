--Add derived table query for each country's land area share by sub-region


SELECT 
	geo.Sub_region,
    geo.Country_name,
    geo.Land_area,
    ROUND((Land_area/ sumLand.Approx_landArea)*100) AS pctShare_
    
FROM geographic_location AS geo

JOIN	(SELECT
			Sub_region,
			SUM(IFNULL(Land_area, 1326)) AS Approx_landArea
			FROM united_nations.geographic_location
			GROUP BY Sub_region) AS sumLand

ON geo.Sub_region = sumLand.Sub_region;
			
