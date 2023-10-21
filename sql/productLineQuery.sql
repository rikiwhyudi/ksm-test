SELECT DISTINCT c.customerNumber FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
JOIN productlines pl ON p.productLine = pl.productLine
WHERE pl.productLine = "Classic Cars"
GROUP BY c.customerNumber
HAVING COUNT(*) > 23;