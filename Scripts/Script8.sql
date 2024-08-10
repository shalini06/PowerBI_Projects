create or replace view classicmodels.sales_data_for_power_bi  as


SELECT orderdate,
ord.ordernumber,
p.productName,
p.productLine,
c.customerName,
c.city as customer_city,
c.country as customer_country,
o.city as office_city,
o.country as office_country,
buyPrice, 
priceEach,
QuantityOrdered,
sum(QuantityOrdered) * sum(priceEach) as sales_value,
sum(buyPrice) * sum(quantityOrdered) as cost_of_sales

FROM classicmodels.orders ord
left join classicmodels.orderdetails od
on ord.orderNumber = od.orderNumber
left join classicmodels.customers c
on ord.customerNumber = c.customerNumber
left join classicmodels.products p
on od.productCode = p.productCode

left join classicmodels.employees e
on c.salesRepEmployeeNumber = e.employeeNumber
left join classicmodels.offices o
on e.officeCode = o.officeCode
group by
orderdate,
ord.ordernumber,
p.productName,
p.productLine,
c.customerName,
c.city,
c.country,orderdatesales_data_for_power_bi
c.city,
c.country,
buyPrice, 
priceEach,
QuantityOrdered

;
