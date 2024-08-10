with main_cte as
(
select orderNumber,orderDate,customerNumber,sum(sales_value) as sales_value
from
(select t1.orderNumber,orderDate,customerNumber,productCode ,quantityOrdered* priceEach as sales_value
from orders t1
inner join orderdetails t2
on t1.orderNumber= t2.orderNumber)main
group by orderNumber,orderDate,customerNumber
),
sales_query as
(
select t1.*,customerName,row_number()over (partition by customerName order by orderDate) as purchase_Number,
lag(sales_value) over(partition by customerName order by orderDate) as previous_sales_value
 from main_cte t1
inner join customers t2
on t1.customerNumber=t2.customerNumber
)
select * , sales_value - previous_sales_value as purchase_value_change
from sales_query
where previous_sales_value is not null;

