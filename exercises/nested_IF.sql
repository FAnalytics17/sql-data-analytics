--nested IF functions to find world cup status for several countries

SELECT DISTINCT
CompanyName,
Country,
IF(Country IN ('GERMANY', 'SPAIN'), '2 world cup',
	IF(Country IN ('FRANCE'), 'one world cup',
        IF(Country IN ('uk', 'sweden'), 'qualifiers',
            IF(Country IN ('mexico'), 'participated','never_played'
            )
         )   
      )      
)		   AS world_cup_record
 FROM northwind.customers;
