create table netflix.countries_released as
(
select *
from
(
SELECT show_id, Country_1 as country FROM netflix.countries
union 
SELECT show_id, Country_2 as country FROM netflix.countries
union 
SELECT show_id, Country_3 as country FROM netflix.countries
union 
SELECT show_id, Country_4 as country FROM netflix.countries
union 
SELECT show_id, Country_5 as country FROM netflix.countries
union 
SELECT show_id, Country_6 as country FROM netflix.countries
union 
SELECT show_id, Country_7 as country FROM netflix.countries
union 
SELECT show_id, Country_8 as country FROM netflix.countries
union 
SELECT show_id, Country_9 as country FROM netflix.countries
union 
SELECT show_id, Country_10 as country FROM netflix.countries
union 
SELECT show_id, Country_11 as country FROM netflix.countries
union
SELECT show_id, Country_12 as country FROM netflix.countries
 )a
where country IS NOT NULL
) 
;
