create table netflix.netflix_cast as
(
select *
from
(
SELECT show_id, cast_1 as cast FROM netflix.cast 
union 
SELECT show_id, cast_2 as cast FROM netflix.cast
union 
SELECT show_id, cast_3 as cast FROM netflix.cast
union 
SELECT show_id, cast_4 as cast FROM netflix.cast
union 
SELECT show_id, cast_5 as cast FROM netflix.cast
union 
SELECT show_id, cast_6 as cast FROM netflix.cast
union 
SELECT show_id, cast_7 as cast FROM netflix.cast
union 
SELECT show_id, cast_8 as cast FROM netflix.cast
union 
SELECT show_id, cast_9 as cast FROM netflix.cast
union 
SELECT show_id, cast_10 as cast FROM netflix.cast
union 
SELECT show_id, cast_11 as cast FROM netflix.cast
union
SELECT show_id, cast_12 as cast FROM netflix.cast
union
SELECT show_id, cast_13 as cast FROM netflix.cast
union 
SELECT show_id, cast_14 as cast FROM netflix.cast
union 
SELECT show_id, cast_15 as cast FROM netflix.cast
union 
SELECT show_id, cast_16 as cast FROM netflix.cast
union 
SELECT show_id, cast_17 as cast FROM netflix.cast
union 
SELECT show_id, cast_18 as cast FROM netflix.cast
union 
SELECT show_id, cast_19 as cast FROM netflix.cast
union
SELECT show_id, cast_20 as cast FROM netflix.cast
union
SELECT show_id, cast_21 as cast FROM netflix.cast
union 
SELECT show_id, cast_22 as cast FROM netflix.cast
union 
SELECT show_id, cast_23 as cast FROM netflix.cast
union 
SELECT show_id, cast_24 as cast FROM netflix.cast
union 
SELECT show_id, cast_25 as cast FROM netflix.cast
union 
SELECT show_id, cast_26 as cast FROM netflix.cast
union 
SELECT show_id, cast_27 as cast FROM netflix.cast
union
SELECT show_id, cast_28 as cast FROM netflix.cast
union 
SELECT show_id, cast_29 as cast FROM netflix.cast
union 
SELECT show_id, cast_30 as cast FROM netflix.cast
union 
SELECT show_id, cast_31 as cast FROM netflix.cast
union
SELECT show_id, cast_32 as cast FROM netflix.cast
union
SELECT show_id, cast_33 as cast FROM netflix.cast
union 
SELECT show_id, cast_34 as cast FROM netflix.cast
union 
SELECT show_id, cast_35 as cast FROM netflix.cast
union 
SELECT show_id, cast_36 as cast FROM netflix.cast
union 
SELECT show_id, cast_37 as cast FROM netflix.cast
union 
SELECT show_id, cast_38 as cast FROM netflix.cast
union 
SELECT show_id, cast_39 as cast FROM netflix.cast
union
SELECT show_id, cast_40 as cast FROM netflix.cast
union 
SELECT show_id, cast_41 as cast FROM netflix.cast
union
SELECT show_id, cast_42 as cast FROM netflix.cast
union
SELECT show_id, cast_43 as cast FROM netflix.cast
union 
SELECT show_id, cast_44 as cast FROM netflix.cast
union 
SELECT show_id, cast_45 as cast FROM netflix.cast
union 
SELECT show_id, cast_46 as cast FROM netflix.cast
union 
SELECT show_id, cast_47 as cast FROM netflix.cast
union 
SELECT show_id, cast_48 as cast FROM netflix.cast
union 
SELECT show_id, cast_49 as cast FROM netflix.cast
union
SELECT show_id, cast_50 as cast FROM netflix.cast
 )a
where cast IS NOT NULL
) 
;
