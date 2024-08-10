with sales as
(
select t2.orderNumber, t3.CustomerNumber,productcode,quantityOrdered,priceEach,creditLimit,priceEach*quantityOrdered as sales_value
from orders t1
inner join orderdetails t2
on t1.orderNumber =t2.orderNumber
inner join customers t3
on t1.customerNumber= t3.customerNumber
)
select ordernumber,customerNumber, 
case when creditLimit<75000 then 'a:Less than $75k'
when creditLimit between 75000 and 100000 then 'b:$75k-$100k'
when creditLimit between 100000 and 150000 then 'c:$100k-$150k'
when creditLimit > 150000 then 'd:Over $150k'
else 'Other'
end as CreditLimit_Group
, sum(sales_value) as sales_value 
from sales
group by orderNumber,customerNUmber,CreditLimit_Group;