/*Add query comparing auditor and employee water quality scores

Join auditor_report to visits on location_id, then join water_quality
on record_id. Keep only first visits (visit_count = 1) where the
auditor's true_water_source_score equals the employee's
subjective_quality_score, to find records where the two agree.*/

SELECT 
	audi.location_id AS location_id,
    audi.true_water_source_score AS auditor_score,
    visits.record_id,
    water.subjective_quality_score AS employee_score
    
FROM auditor_report AS audi
JOIN visits 
ON audi.location_id=visits.location_id

JOIN water_quality AS water
ON visits.record_id = water .record_id

WHERE audi.true_water_source_score=water.subjective_quality_score
AND visits.visit_count=1;
