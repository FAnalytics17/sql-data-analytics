-- used to filter records within a specific range
-- inclusive of the rangle end points 

SELECT *
FROM database_name.table_name
WHERE columnA BETWEEN 10 AND 60;
-- the results is rows with columnA values between 10 and 60 inclusive of 10,60 (endpoints)
