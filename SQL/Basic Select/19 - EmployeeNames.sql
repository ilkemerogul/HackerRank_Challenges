--Problem Statement
/*
Given a table EMPLOYEE that holds data for three fields; EMPLOYEE_ID, NAME, MONTHS, SALARY.

+-------------+-------------+
| Field       |   Type      |
+-------------+-------------+
| EMPLOYEE_ID | Integer     |
| NAME        | String      |
| MONTHS      | Integer     |
| SALARY      | Integer     |
+-------------+-------------+

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/

--Solution

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME ASC;
