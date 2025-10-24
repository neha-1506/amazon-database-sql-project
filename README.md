# Amazon Sales Analytics – SQL Project Overview
This SQL-based project centers on building and analyzing a relational database for a fictional company named Amazon. The primary objective is to derive actionable insights from sales and order data using structured queries. The database comprises two core tables: salesman and orders. These tables are linked via a foreign key relationship, enabling comprehensive analysis of sales performance, commission earnings, customer behavior, and regional trends.

The salesman table stores details such as name, city, commission rate, and a unique identifier. The orders table captures order-specific information including order number, purchase amount, order date, customer ID, and the associated salesman ID. Together, these tables provide a robust foundation for business intelligence queries.

Key analytical tasks include calculating total commissions earned by each salesman, identifying the highest purchase amount per salesman, and summarizing total sales by region. The project also filters orders based on city (e.g., Paris), tracks high-value transactions, and retrieves customer-specific order histories. Time-based queries allow for the extraction of orders placed during specific periods, supporting seasonal trend analysis.

Advanced joins are used to combine order data with salesman details, offering a complete view of sales operations. Aggregation functions such as SUM, MAX, and ROUND are employed to quantify performance metrics, while conditional filters help isolate relevant subsets of data.

This project demonstrates proficiency in SQL fundamentals including database creation, data retrieval, joins, grouping, ordering, and filtering. It serves as a practical example of how relational databases can be leveraged to support decision-making in sales management.

Future enhancements may include integrating customer demographics, product-level data, and automated reporting through views or stored procedures. Overall, this project provides a solid framework for scalable sales analytics and performance tracking in a business environment.
