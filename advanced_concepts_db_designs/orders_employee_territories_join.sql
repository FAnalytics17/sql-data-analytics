SELECT
O.OrderID,
CONCAT(FirstName, ' ',LastName) AS Employee_fullname,
T.TerritoryDescription
FROM orders AS O
JOIN employees AS E
ON E.EmployeeID = O.EmployeeID
JOIN employeeterritories AS ET
ON E.EmployeeID = ET.EmployeeID
JOIN territories AS T
ON ET.TerritoryID=T.TerritoryID
ORDER BY O.OrderID;
