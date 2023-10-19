SELECT DISTINCT customers.customerNumber FROM customers
JOIN orders on customers.customerNumber = orders.customerNumber
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
JOIN products ON orderdetails.productCode = products.productCode
JOIN productlines ON products.productLine = productlines.productLine
WHERE productlines.productLine = "Classic Cars"
GROUP BY customers.customerNumber
HAVING COUNT(productlines.productLine) > 23;