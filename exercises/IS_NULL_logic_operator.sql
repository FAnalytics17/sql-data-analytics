-- used to check whether a column has NULL or missing values
-- helps to identify gaps in the data

SELECT *
FROM database_name.table_name
WHERE columnA IS NULL
      OR columnB IS NULL;

-- null values create fallacies (error in logic or reasoning)
