select *,
date_add(shippedDate, interval 3 day) as latest_arrival,
case when date_add(shippedDate, interval 3 day)>requiredDate then 1 else 0 
end as late_flag
from  orders
where (case when date_add(shippedDate, interval 3 day)>requiredDate then 1 else 0 
end)=1;