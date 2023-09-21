שאלה 1
SELECT * FROM employees


שאלה 2
SELECT COUNT(product_id) FROM Products

שאלה 4 
SELECT supplier_id,unit_price FROM Products
WHERE supplier_id = 2
ORDER BY unit_price DESC
LIMIT 3 


שאלה 7 
SELECT categories.category_name,avg(avrege_price_per_category) AS avrege_price
FROM(
SELECT products.category_id,MAX(SUM((order_details.unit_price * order_details.quantity) * (1 - order_details.discount))) AS avrege_price_per_category
FROM products
GROUP BY products.category_id 
) AS price_per_category
INNER JOIN products ON products.product_id = order_detail.product_id
INNER JOIN categories ON categories.category_id = products.category_id
GROUP BY avrege_price


שאלה 8
SELECT E.first_name,E.last_name,T.territory_description
FROM employees AS E
INNER JOIN employee_territories AS ET ON E.employee_id = ET.employee_id 
INNER JOIN territories AS T ON T.territory_id = ET.territory_id 
GROUP BY E.first_name,E.last_name,T.territory_description
ORDER BY E.first_name,E.last_name,T.territory_description