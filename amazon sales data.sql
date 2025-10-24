create database amazon;
use amazon;


select * from salesman;
select * from orders;


-- Get the total commission each salesman would earn (on their total sales).in descending order.alter

SELECT s.name,
       ROUND(SUM(o.purch_amt * s.commission), 2) AS total_commission
FROM orders o
JOIN salesman s ON o.salesman_id = s.salesman_id
GROUP BY s.name
ORDER BY total_commission DESC;


-- Find the highest purchase amount each salesman made.
SELECT s.name, MAX(o.purch_amt) AS max_purchase
FROM orders o
JOIN salesman s ON o.salesman_id = s.salesman_id
GROUP BY s.name;


-- Show only orders handled by salesmen in Paris.
SELECT o.ord_no, o.purch_amt, s.name, s.city
FROM orders o
JOIN salesman s ON o.salesman_id = s.salesman_id
WHERE s.city = 'Paris';


-- Find total sales handled by each salesman. in descending order
SELECT s.name, s.city, ROUND(SUM(o.purch_amt),2) AS total_sales
FROM orders o
JOIN salesman s ON o.salesman_id = s.salesman_id
GROUP BY s.name, s.city
ORDER BY total_sales DESC;


-- List all orders with salesman details.
SELECT o.ord_no, o.purch_amt, o.ord_date,
       s.name AS salesman_name, s.city, s.commission
FROM orders o
JOIN salesman s ON o.salesman_id = s.salesman_id;


-- Find all orders placed by customer 3001.

SELECT *
FROM orders
WHERE customer_id = 3001;


-- Display orders with a purchase amount greater than 1000.
SELECT ord_no, purch_amt, customer_id
FROM orders
WHERE purch_amt > 1000;


-- Display each salesman’s total sales amount.
SELECT salesman_id,
       ROUND(SUM(purch_amt), 2) AS total_sales
FROM orders
GROUP BY salesman_id
ORDER BY total_sales DESC;


-- Retrieve orders made in September 2012.
SELECT *
FROM orders
WHERE MONTH(ord_date) = 9 AND YEAR(ord_date) = 2011;


-- Join both tables to show salesman names with their orders.
SELECT o.ord_no, o.purch_amt, s.name AS salesman_name, s.city
FROM orders o
JOIN salesman s
ON o.salesman_id = s.salesman_id;













