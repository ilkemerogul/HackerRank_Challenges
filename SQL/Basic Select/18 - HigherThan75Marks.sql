--Problem Statement
/*
Given a table STUDENTS that holds data for three fields; ID, NAME, MARKS.
The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

+-------------+-------------+
| Field       |   Type      |
+-------------+-------------+
| ID          | Integer     |
| NAME        | String      |
| MARKS       | Integer     |
+-------------+-------------+

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name.
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/

--Solution

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(NAME, -3), ID ASC;
