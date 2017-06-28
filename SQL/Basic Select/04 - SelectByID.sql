--Problem Statement
/*
Given a table CITY that holds data for five fields; ID, NAME, COUNTRYCODE, DISTRICT and POPULATION.
+-------------+-------------+
| Field       |   Type      |
+-------------+-------------+
| ID          | NUMBER      |
| NAME        | VARCHAR2(17)|
| COUNTRYCODE | VARCHAR2(3) |
| DISTRICT    | VARCHAR2(20)|
| POPULATION  | NUMBER      |
+-------------+-------------+

Query all columns for a city in CITY with the ID 1661.
*/

--Solution

SELECT * FROM CITY WHERE ID = '1661';
