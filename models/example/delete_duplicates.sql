{{config (materialized = 'table')}}

SELECT EmployeeID,FirstName, LastName, Department, Salary FROM
(
SELECT EmployeeID,FirstName, LastName, Department, Salary,
ROW_NUMBER()
OVER 
(PARTITION BY EmployeeID
ORDER BY EmployeeID) RNKgh
FROM Employeessss.hj
) WHERE RNK>1
