# Basic select important notes

``` sql
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
```

1. Basic query and operators
```sql
-- select column names
select name 
-- from table
from city 
-- with certain conditions
where population > 120000 
and ID%2 = 0
and Countrycode = "USA";
```

2. distinct
```sql
SELECT DISTINCT
    column1, column2, ...
FROM
    table1;
```
- If you use 2 or more columns after `DISTINCT`, it will show distinct combinations of both columns. Eg. all the distinct jobs and salaries (some people might be paid more for the same job!)
- can also use `GROUP BY` if you only want to remove duplicates in one columns. (select salary from table group by job. will only show distinct jobs and their different salaries) 

3. `COUNT()`
```sql
select count(city) - count(distinct(city))
from station
```