-- RLIKE OR REGEXP VERSION
select distinct city
from station
where city not rlike "^[aeiouAEIOU].*"
or city not rlike ".*[aeiouAEIOU]$"

-- ALT
select distinct city
from station
where left(city, 1) not in ("a", "e", "i", "o", "u")
OR  right(city, 1) not in ("a", "e", "i", "o", "u", "A", 'E', 'I','O','U');