SELECT
	loc.address,
    loc.town_name,
    loc.province_name,
    ws.source_id,
    ws.type_of_water_source,
    wp.results
FROM water_source AS ws

LEFT JOIN well_pollution_copy AS wp
ON wp.source_id=ws.source_id

INNER JOIN visits
ON visits.source_id=ws.source_id


INNER JOIN location AS loc
ON loc.location_id=visits.location_id
;
