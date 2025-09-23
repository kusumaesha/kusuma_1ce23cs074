show databases;
create database order_management;
use order_management;
CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(100) NOT NULL,
	product_name VARCHAR(100) NOT NULL,
	quantity INT NOT NULL,
	price DECIMAL (10,2) NOT NULL,
	order_date DATE NOT NULL,
	status VARCHAR(20) DEFAULT 'Pending'
);

INSERT INTO orders (customer_name, product_name, quantity, price, order_date, status) VALUES
('John Doe', 'Laptop', 1, 999.99, '2025-09-15', 'Pending'),
('Jane Smith', 'Smartphone', 2, 499.99, '2025-09-16', 'Shipped'),
('Alice Johnson', 'Headphones', 3, 79.99, '2025-09-17', 'Delivered'),
('Bob Brown', 'Monitor', 1, 299.99, '2025-09-18', 'Pending'),
('Charlie Davis', 'Keyboard', 5, 29.99, '2025-09-19', 'Shipped'),
('Diana Lee', 'Mouse', 2, 15.49, '2025-09-20', 'Delivered'),
('Eve White', 'Tablet', 1, 329.99, '2025-09-21', 'Pending'),
('Frank Green', 'Smartwatch', 1, 199.99, '2025-09-22', 'Shipped'),
('Grace Taylor', 'Speaker', 4, 49.99, '2025-09-23', 'Pending'),
('Harry Wilson', 'Camera', 1, 599.99, '2025-09-24', 'Delivered');

select * from orders;

select * from orders order by price desc;
select * from orders order by price desc limit 1 offset 1;

select * from orders where status in('Delivered','Processing','Shipped');

select * from orders where status in('Processing','Shipped');

select * from orders where status in('Processing','Shipped');

select * from orders where status in('Delivered','Processing','Shipped');
select count(*)as "total orders" from orders;

select max(price) from orders;

select min(price) from orders;

select avg(price) from orders;