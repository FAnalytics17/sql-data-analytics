/*Add JOIN query linking auditor reports to visits by location

Join auditor_report to visits on location_id to return each audited
location with its true_water_source_score alongside the matching visit
record_id.*/

SELECT 
	audi.location_id AS audit_location,
    audi.true_water_source_score,
    visits.location_id AS visit_location,
    visits.record_id
    
FROM auditor_report AS audi
JOIN visits 

ON audi.location_id=visits.location_id;
