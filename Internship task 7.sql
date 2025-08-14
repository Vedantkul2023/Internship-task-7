CREATE VIEW customer_order_summary AS
SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent FROM Customers AS c
INNER JOIN Orders AS o ON c.customer_id = o.customer_id GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT * FROM customer_order_summary;

SELECT first_name, last_name, total_orders, total_spent FROM customer_order_summary
WHERE total_spent > 1000
ORDER BY total_spent DESC;

