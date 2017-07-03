--     Author: Z. Ilkem Erogul
--     Github: github.com/ilkemerogul
-- HackerRank: hackerrank.com/ilkemerogul

-- Problem Statement
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

Given a table COUNTRY that holds data for fifteen fields; CODE, NAME, CONTINENT, REGION, SURFACEAREA, INDEPYEAR, POPULATION, LIFEEXPECTANCY, GNP, GNPOLD, LOCALNAME, GOVERNMENTFORM, HEADOFSTATE, CAPITAL and CODE2.
+----------------+-------------+
| Field          |   Type      |
+----------------+-------------+
| CODE           | VARCHAR2(3) |
| NAME           | VARCHAR2(44)|
| CONTINENT      | VARCHAR2(13)|
| REGION         | VARCHAR2(25)|
| SURFACEAREA    | NUMBER      |
| INDEPYEAR      | VARCHAR2(5) |
| POPULATION     | NUMBER      |
| LIFEEXPECTANCY | VARCHAR2(4) |
| GNP            | NUMBER      |
| GNPOLD         | VARCHAR2(9) |
| LOCALNAME      | VARCHAR2(44)|
| GOVERNMENTFORM | VARCHAR2(44)|
| HEADOFSTATE    | VARCHAR2(32)|
| CAPITAL        | VARCHAR2(4) |
| CODE2          | VARCHAR2(2) |
+----------------+-------------+

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

-- Solution

SELECT SUM(CITY.POPULATION)
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Asia';
