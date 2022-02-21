# Basic Join
1. Basic join
```sql
select if(g.grade < 8, NULL, s.name),
    g.grade,
    s.marks
from students s
join grades g
on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name

```

2. round(c1, 0) vs floor(), ceiling()
- round(c1, 0) returns decimal while floor() and ceiling() returns integer. Might be important

3. Joining between a range
```sql
select if(g.grade < 8, NULL, s.name),
    g.grade,
    s.marks
from students s
join grades g
on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name

```