with prod_sales as
(
select  orderNumber,t1.productCode,productLine from orderdetails t1 
inner join products t2
on t1.productCode= t2.productCode
)
select distinct(t1.OrderNumber),t1.productLine as Product_1 , t2.productLine as Product_2 
from prod_sales t1 
left join prod_sales t2
on t1.orderNumber =t2.orderNumber 
and t1.productLine<> t2.productLine;