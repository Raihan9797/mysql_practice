-- RLIKE OR REGEXP VERSION
select distinct(city)
from station
where city rlike "[a,e,i,o,u]$"

-- ALT
select distinct city
from station
where right(city, 1) in ("a", "e", "i", "o", "u")