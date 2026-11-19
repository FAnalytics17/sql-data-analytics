SELECT 
	loc.address,
    loc.town_name,
    loc.province_name,
    h20.source_id,
    h20.type_of_water_source,
CASE 
	WHEN wp.results = 'Contaminated: Chemical' THEN 'Install RO filter'
    WHEN wp.results = 'Contaminated: Biological' THEN 'Install UV and RO filter'
    WHEN h20.type_of_water_source = 'river' THEN 'Drill well'
    WHEN h20.type_of_water_source = 'shared_tap' AND visits.time_in_queue>=30 
		THEN CONCAT('Install',' ',FLOOR(visits.time_in_queue/30),' ','taps nearby')
	WHEN h20.type_of_water_source = 'tap_in_home_broken' THEN 'Diagnose local infrastructure'
    ELSE NULL
END AS Improvements
FROM water_source AS h20

LEFT JOIN well_pollution_copy AS wp 
		ON h20.source_id=wp.source_id

INNER JOIN visits
		ON h20.source_id=visits.source_id

INNER JOIN location AS loc
		ON loc.location_id=visits.location_id
WHERE visits.visit_count=1
AND (wp.results!='clean'
	  OR h20.type_of_water_source IN ('river','tap_in_home_broken')
      OR (h20.type_of_water_source = 'shared_tap' AND time_in_queue >=30)
      )
	;
        
        ;
