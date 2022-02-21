-- RLIKE OR REGEXP VERSION
select distinct city
from station
where city rlike "^[^a,e,i,o,u]"

-- ALT
select distinct city from station where left(city,1) not in('a','e','i','o','u') 
