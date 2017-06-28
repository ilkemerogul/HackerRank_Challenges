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

Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
*/

--Solution

SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';
