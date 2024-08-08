create table netflix.netflix_directors as
(
select *
from
(
SELECT show_id, director_1 as director FROM netflix.directors
union 
SELECT show_id, director_2 as director FROM netflix.directors
union 
SELECT show_id, director_3 as director FROM netflix.directors
union 
SELECT show_id, director_4 as director FROM netflix.directors
union 
SELECT show_id, director_5 as director FROM netflix.directors
union 
SELECT show_id, director_6 as director FROM netflix.directors
union 
SELECT show_id, director_7 as director FROM netflix.directors
union 
SELECT show_id, director_8 as director FROM netflix.directors
union 
SELECT show_id, director_9 as director FROM netflix.directors
union 
SELECT show_id, director_10 as director FROM netflix.directors
union 
SELECT show_id, director_11 as director FROM netflix.directors
union
SELECT show_id, director_12 as director FROM netflix.directors
union
SELECT show_id, director_13 as director FROM netflix.directors
 )a
where director IS NOT NULL
) 
;
