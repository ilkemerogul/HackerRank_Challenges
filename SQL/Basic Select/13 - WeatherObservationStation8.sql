--     Author: Z. Ilkem Erogul
--     Github: github.com/ilkemerogul
-- HackerRank: hackerrank.com/ilkemerogul

-- Problem Statement
/*
Given a table STATION that holds data for five fields; ID, CITY, STATE, LAT_N and LONG_W.
+-------------+-------------+
| Field       |   Type      |
+-------------+-------------+
| ID          | NUMBER      |
| CITY        | VARCHAR2(21)|
| STATE       | VARCHAR2(2) |
| LAT_N       | NUMBER      |
| LONG_W      | NUMBER      |
+-------------+-------------+

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/

-- Solution

SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE (CITY, '^[AEIOU](*)') AND REGEXP_LIKE (CITY, '(*)[aeiou]$')
ORDER BY CITY ASC;
