create database ecommerceDB;
use ecommerceDB;

--  Customer Table
create table Customers(
customer_id INT primary key auto_increment,
Name varchar(100) not null,
email varchar(100) unique,
phone varchar(10)
);

-- Product Table
create table Products(
product_id int primary key auto_increment,
Name varchar(100) not null,
price decimal(10,2) not null,
stock int default 0
);

-- order table
create table orders(
order_id int primary key auto_increment,
customer_id int,
order_date date,
Total_amount decimal(10,2),
foreign key (customer_id) references customers(customer_id)
);

-- order_items table 
create table order_items(
order_items_id int primary key auto_increment,
order_id int not null,
product_id int not null,
quantity int not null,
price decimal(10,2),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);

-- Sales Table 
create table sales(
sales_id int primary key auto_increment,
order_id int not null,
payment_date date not null,
payment_method varchar(100) not null,
amount_paid int not null,
foreign key (order_id) references orders(order_id)
);

-- insering data into tables 
-- Customers
insert into customers (Name, Email, Phone)
values 
('Ram', 'ram@gmail.com', '9876543210'),
('Ramesh', 'ramesh@gmail.com', '8765432109');

-- Products
insert into products (Name, Price)
values
('iPhone', 1000),
('Laptop', 1500);

-- Orders
insert into orders(customer_id, order_date, total_amount)
values
(1, '2025-09-22', 3500),
(2, '2025-09-22', 2000);

-- Order Items
insert into order_items (order_ID, product_ID, quantity, price)
values
(1, 1, 2, 1000),   -- 2 iPhones
(1, 2, 1, 1500),   -- 1 Laptop
(2, 2, 1, 2000);   -- 1 Laptop (discounted)

-- Sales
insert into sales (order_ID, payment_Date, payment_Method, amount_Paid)
values
(1, '2025-09-23', 'UPI', 3500),
(2, '2025-09-23', 'Credit Card', 2000);

select * from orders;

-- visualize relationships
-- shows products under each order
select o.order_id,p.Name , oi.quantity, oi.price 
from order_items oi
join products p on oi.product_id=p.product_id
join orders o on oi.order_id=o.order_id;

-- show sales transactions with payment details 
select s.sales_id,c.Name as customer, o.order_id,s.payment_method,s.amount_paid
from sales s
join orders o on s.order_id = o.order_id
join customers c on c.customer_id=o.customer_id;

-- Show total revenue grouped by payment method
select payment_Method, SUM(amount_Paid) AS Total_Revenue
FROM sales
GROUP BY payment_method;

