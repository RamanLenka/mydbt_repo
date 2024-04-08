{{config (materialized = 'table')}}

SELECT EmployeeID,FirstName, LastName, Department, Salary FROM
(
SELECT EmployeeID,FirstName, LastName, Department, Salary,
ROW_NUMBER()
OVER 
(PARTITION BY EmployeeID
ORDER BY EmployeeID) RNK
FROM Employeessss.kjjhgfgfgjhgfhg
) WHERE RNK>1
