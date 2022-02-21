-- RLIKE OR REGEXP VERSION
select distinct city
from station
where city not rlike "^[aeiouAEIOU].*"
and city not rlike ".*[aeiouAEIOU]$"

-- ALT
select distinct city
from station
where left(city, 1) not in ("a", "e", "i", "o", "u")
and  right(city, 1) not in ("a", "e", "i", "o", "u", "A", 'E', 'I','O','U');