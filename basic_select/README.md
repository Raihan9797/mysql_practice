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

2. `DISTINC c1, c2`
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

4. `ORDER BY c1 DESC, c2 [ASC]`
```sql
select 
    city,
    length(city) as len
from station
order by len, city
limit 1;

select 
    city,
    length(city) as len
from station
order by len desc, city
limit 1;
```
* order by defaults to asc ie ascending. you need to specify descending however.

5. `LIMIT n [OFFSET o]`
```sql
SELECT 
    employee_id, 
    first_name, 
    last_name, 
    salary
FROM
    employees
ORDER BY 
	salary DESC
LIMIT 1 OFFSET 1;
```
* Offset defaults to 0. `OFFSET` is used if you wanna get values in specific indexes.

![limit offset example](https://github.com/raihan9797/mysql_practice/blob/master/images/limit_offset.png)

6. It's possible to use `like` for string searching, but `rlike` applies to a much larger context. In the long run, it's better to use `rlike`.
- `RLIKE` == `REGEXP`. `RLIKE` is shorter and easier to remember.

7. `left()` and `right()`
```sql
LEFT(string, number_of_chars)
-- eg.
select distinct city
from station
-- Seems like sql doesnt care about case!
where right(city, 1) in ("a", "e", "i", "o", "u")
AND  left(city, 1) in ("a", "e", "i", "o", "u", "A", 'E', 'I','O','U')
```

8. Multiple string conditionals: use `NOT` `AND `OR` instead of regex conditionals whenever possible

9. `SUBSTR(string, start, length)`
- You can use `right()` or `left()` if you are looking at the start or end.
```sql
select name 
from students
where marks > 75
order by substr(name, -3, 3), id

select name 
from students
where marks > 75
order by right(name, 3), id
```

10.`order by c1, c2`
- usually put at the last after filtering.
