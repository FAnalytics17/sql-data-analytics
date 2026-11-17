CREATE VIEW combined_analysis_table AS
/*assemble data from different tables into one simplified analysis*/
SELECT 
		loc.province_name,
		loc.town_name,
        sos.type_of_water_source,
        sos.number_of_people_served,
        time_in_queue,
        well.results
 FROM md_water_services.visits AS vis
 
 INNER JOIN location AS loc
 ON loc.location_id=vis.location_id
 
 INNER JOIN water_source AS sos
 ON sos.source_id=vis.source_id
 
 LEFT JOIN well_pollution_copy AS well
 ON well.source_id=vis.source_id
 
 WHERE vis.visit_count=1;
 
