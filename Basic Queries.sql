----- View all customers
select * from customers;

------ View all products
select * from products;

----- Count total orders
SELECT COUNT(*) AS total_orders FROM orders;

----- Orders by status
SELECT status, COUNT(*) 
FROM orders
GROUP BY status;

------ Customer orders
SELECT c.first_name, o.order_id, o.status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

----- Products with category
SELECT p.product_name, c.category_name
FROM products p
JOIN categories c ON p.category_id = c.category_id;

---- Order details
SELECT o.order_id, p.product_name, oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

