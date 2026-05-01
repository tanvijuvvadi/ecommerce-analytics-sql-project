----- Total Revenue
SELECT 
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'PAID';

----- Average Order Value (AOV)
SELECT 
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) 
/ COUNT(DISTINCT o.order_id) AS AOV
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'PAID';

----- Top 5 Products by Revenue
SELECT p.product_name,
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON o.order_id = oi.order_id
WHERE o.status = 'PAID'
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

---- Revenue by Category
SELECT c.category_name,
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
JOIN orders o ON o.order_id = oi.order_id
WHERE o.status = 'PAID'
GROUP BY c.category_name
ORDER BY revenue DESC;