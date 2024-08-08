create table netflix.netflix_listed_in as
(
select *
from
(
SELECT show_id, listed_in_1 as category FROM netflix.`listed in` 
union 
SELECT show_id, listed_in_2 as category FROM netflix.`listed in`
union 
SELECT show_id, listed_in_3 as category FROM Netflix.`listed in`

 )a
where category IS NOT NULL
);
