{{config (materialized = 'table')}}

SELECT EmployeeID,FirstName, LastName, Department, Salary FROM
(
SELECT EmployeeID,FirstName, LastName, Department, Salary,
ROW_NUMBER()
OVER 
(PARTITION BY EmployeeIDghgh
ORDER BY EmployeeID) RNKghdfdfd
FROM Employeessss.hj
) WHERE RNK>1
