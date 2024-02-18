use classicmodels;

SELECT distinct country
FROM customers
JOIN orders ON customer.customerNumber = orders.customerNumber
GROUP BY orders.customerNumber
HAVING AVG (orderNumeber) > 4;

select customerNumber, AVG (quantityOrdered) as avgQty
from orderdetails
join orders using (orderNumber)
group by orders.customerNumber
having avgQty >35;
 
 
 WITH avgQuery AS
(SELECT 
    c.customerNumber, c.customerName, c.country, s.countNumber
FROM
    customers c
        JOIN
    (SELECT 
        customerNumber, COUNT(*) AS countNumber
    FROM
        orders
    GROUP BY customerNumber
    HAVING countNumber > 5) s ON c.customerNumber = s.customerNumber)
SELECT * FROM avgQuery;

SELECT country
FROM customers
WHERE customerNumber IN (SELECT customerNumber)


select AVG(ors.quantityOrdered) as averageQty, cus.country as average 
from orders ord join orderdetails ors on ord.orderNumber = ors.orderNumber 
join customers cus on cus.customerNumber = ord.customerNumber 
where ord.customerNumber = cus.customerNumber
group by ord.customerNumber having averageQty >35
