WITH province_totals AS 
/*CTE calculates population of each province*/
(SELECT
	province_name,
	SUM(number_of_people_served) AS total_pple_served
FROM combined_analysis_table 
GROUP BY province_name
)

SELECT
	ct.province_name,
    ROUND((SUM(CASE WHEN type_of_water_source = 'river'
				THEN number_of_people_served ELSE 0 END)*100/total_pple_served), 0) AS river,
    ROUND((SUM(CASE WHEN type_of_water_source = 'shared_tap'
				THEN number_of_people_served ELSE 0 END)*100/total_pple_served), 0) AS shared_tap,
	ROUND((SUM(CASE WHEN type_of_water_source = 'tap_in_home'
				THEN number_of_people_served ELSE 0 END)*100/total_pple_served), 0) AS tap_in_home,
	ROUND((SUM(CASE WHEN type_of_water_source = 'tap_in_home_broken'
				THEN number_of_people_served ELSE 0 END)*100/total_pple_served), 0) AS tap_in_home_broken,
	ROUND((SUM(CASE WHEN type_of_water_source = 'well'
				THEN number_of_people_served ELSE 0 END)*100/total_pple_served), 0) AS well
FROM combined_analysis_table AS ct
JOIN province_totals AS pt
ON pt.province_name=ct.province_name
GROUP BY ct.province_name
ORDER BY ct.province_name DESC;
