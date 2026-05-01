------  Top Customers (Customer Lifetime Value)
SELECT c.customer_id, c.email,
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'PAID'
GROUP BY c.customer_id, c.email
ORDER BY total_spent DESC
LIMIT 5;

----- Channel Performance (Revenue)
SELECT ch.channel_name,
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) AS revenue
FROM orders o
JOIN channels ch ON o.channel_id = ch.channel_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'PAID'
GROUP BY ch.channel_name;

------ Refund Impact
SELECT 
SUM((oi.unit_price * oi.quantity) - COALESCE(oi.discount,0)) AS refund_loss
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'REFUNDED';