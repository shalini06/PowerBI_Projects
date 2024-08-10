select t1.orderdate,t2.quantityOrdered,priceEach,productName,productLine,buyPrice,city,country from orders t1
inner join orderdetails t2
on  t2.ordernumber=t1.ordernumber
inner join products t3
on t2.productcode= t3.productcode
inner join customers t4
on t1.customernumber=t4.customerNumber
where year(orderdate)=2004;