--Problem Statement
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

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

--Solution

SELECT * FROM
(
    SELECT CITY AS Shortest_City, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) ASC, CITY ASC
)
WHERE ROWNUM = 1
UNION
SELECT * FROM
(
    SELECT CITY AS Longest_City, LENGTH(CITY)
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY ASC
)
WHERE ROWNUM = 1;
