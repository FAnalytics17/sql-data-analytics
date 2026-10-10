--used to check if a value in a column matches any value in a list
--used in place of multiple OR operator
SELECT *
FROM database_name.table_name
WHERE columnA = 'we'
              OR columnA = 'you'
              OR columnA = 'us'
         ;

--Alternatively using IN

SELECT *
FROM database_name.table_name
WHERE columnA
    IN ( 'we'
         'you'
         'us'
       );
