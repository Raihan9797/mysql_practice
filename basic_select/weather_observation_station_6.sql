-- RLIKE OR REGEXP VERSION
select distinct(city)
from station
where city rlike "^[a,e,i,o,u]"

-- LIKE VERSION
select distinct(city) from station where
city like "a%" or
city like "e%" or
city like "i%" or
city like "o%" or
city like "u%";

-- ALT
select distinct city from station where left(city,1) in('a','e','i','o','u')