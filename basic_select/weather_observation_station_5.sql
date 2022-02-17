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

-- ALTERNATIVE USING MIN MAX
select 
    city,
    length(city) as len
from station
where length(city) = (select min(length(city)) from station)
order by city
limit 1;

select 
    city,
    length(city) as len
from station
where length(city) = (select max(length(city)) from station)
order by city
limit 1;
