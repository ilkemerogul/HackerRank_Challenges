--     Author: Z. Ilkem Erogul
--     Github: github.com/ilkemerogul
-- HackerRank: hackerrank.com/ilkemerogul

-- Problem Statement
/*
Given a table EMPLOYEE that holds data for four fields; EMPLOYEE_ID, NAME, MONTHS, SALARY.
+-------------+-------------+
| Field       |   Type      |
+-------------+-------------+
| EMPLOYEE_ID | Integer     |
| NAME        | String      |
| MONTHS      | Integer     |
| SALARY      | Integer     |
+-------------+-------------+

We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.

Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.
Then print these values as 2 space-separated integers.
*/

-- Solution

SELECT * FROM (
    SELECT SALARY*MONTHS, COUNT(*)
    FROM EMPLOYEE
    GROUP BY SALARY*MONTHS
    ORDER BY SALARY*MONTHS DESC)
WHERE ROWNUM = 1;
