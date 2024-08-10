with cte_sales as
(
select t1.orderDate,t1.orderNumber,t3.customerName,t3.customerNumber,productCode,creditLimit,quantityOrdered*priceEach as Sales_value
from orders t1
inner join orderdetails t2
on t1.orderNumber=t2.orderNumber
inner join customers t3
on t1.customerNumber=t3.customerNumber
),
running_total_cte as
(
select orderDate,orderNumber,customerNumber,customerName,creditLimit, sum(Sales_value) as Sales_value
from cte_sales
 group by orderDate,orderNumber,customerNumber,customerName,creditLimit
 ),
  payments_cte as
(
select *,
sum(amount) over (partition by customerNumber order by paymentDate) as running_total_payments
from payments
)
 select *,
 sum(Sales_value) over (partition by customerNumber order by orderDate) as running_total_sales
 from running_total_cte t1
 inner join payments_cte t2
 on t1.customerNumber= t2.customerNumber;