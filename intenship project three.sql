#create database internship_project;
use internship_project; 



#QUERY1: SELECT
select * from internship_project.`dataset to be used`;

select OrderID, Date, Product, Quantity, Unitprice, Orderstatus,Totalprice
from internship_project.`dataset to be used`
limit 10;

select Distinct Product from
internship_project.`dataset to be used`;

#QUERY2: WHERE
select OrderID, Date, CustomerId, Product, Quantity, TotalPrice
from internship_project.`dataset to be used`
where OrderStatus = 'Delivered'
and TotalPrice >2000
and Date >=  '2024-01-01'
and Date >  '2025-01-01';

#QUERY3: ORDER BY
select OrderID, Date, CustomerId, Product, Quantity, TotalPrice, OrderStatus
from internship_project.`dataset to be used`
order by TotalPrice desc, Date asc
limit 10;

#QUERY 4 : GROUP BY WITH COUNT, SUM and AVERAGE
SELECT
Product,
COUNT(*)                     AS total_orders,
SUM(Quantity)                AS total_units_sold,
SUM(TotalPrice)              AS total_revenue,
ROUND(AVG(TotalPrice), 2)    AS average_order_value
FROM internship_project.`dataset to be used`
GROUP BY Product;

#QUERY5 : WHERE + GROUP BY + ORDER BY
SELECT
ReferralSource,
COUNT(*)                    AS total_orders,
SUM(TotalPrice)             AS total_revenue
FROM internship_project.`dataset to be used`
WHERE OrderStatus NOT IN ('Cancelled' , 'Returned')
GROUP BY ReferralSource
ORDER BY total_revenue DESC;