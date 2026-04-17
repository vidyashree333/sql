CREATE DATABASE swiggy;
USE swiggy;

CREATE TABLE customer_info (
    customer_id CHAR(5) PRIMARY KEY,
    customer_name VARCHAR(30) NOT NULL,
    phone VARCHAR(10) UNIQUE,
    city VARCHAR(20)
);

DESC customer_info;

INSERT INTO customer_info VALUES
('C001','Amit','9876543210','Bangalore'),
('C002','Ravi','9123456789','Mysore'),
('C003','Sneha','9988776655','Delhi'),
('C004','Kiran','9871234560','Mumbai'),
('C005','Pooja','9765432109','Chennai'),
('C006','Rahul','9345678901','Hyderabad'),
('C007','Neha','9234567810','Pune'),
('C008','Arjun','9123987654','Kolkata'),
('C009','Divya','9012345678','Jaipur'),
('C010','Vikram','9898765432','Surat'),
('C011','Anjali','9789654321','Lucknow'),
('C012','Manoj','9678543210','Nagpur'),
('C013','Kavya','9567432109','Bhopal'),
('C014','Suresh','9456321098','Patna'),
('C015','Meena','9345210987','Goa');

SELECT * FROM customer_info;


CREATE TABLE orders_info (
    order_id INT PRIMARY KEY,
    order_amount DECIMAL(8,2),
    order_status VARCHAR(20),
    customer_id CHAR(5),
    FOREIGN KEY (customer_id) REFERENCES customer_info(customer_id)
);

DESC orders_info;


INSERT INTO orders_info VALUES
(101,250,'Delivered','C001'),
(102,300,'Delivered','C002'),
(103,150,'Pending','C003'),
(104,500,'Delivered','C004'),
(105,200,'Cancelled','C005');

SELECT * FROM orders_info;


CREATE TABLE restaurant_info (
    restaurant_id CHAR(5) PRIMARY KEY,
    restaurant_name VARCHAR(30),
    location VARCHAR(20),
    rating DECIMAL(2,1)
);
desc restaurant_info;


INSERT INTO restaurant_info VALUES
('R001','Dominos','Bangalore',4.2),
('R002','KFC','Mysore',4.0),
('R003','Udupi','Delhi',4.5),
('R004','Pizza Hut','Mumbai',4.1),
('R005','Subway','Chennai',4.3),
('R006','Burger King','Hyderabad',4.0),
('R007','Biryani House','Pune',4.6),
('R008','Cafe Coffee','Kolkata',4.2),
('R009','Barbeque','Jaipur',4.4),
('R010','Haldirams','Surat',4.1),
('R011','Saravana','Chennai',4.5),
('R012','Meghana','Bangalore',4.7),
('R013','Empire','Bangalore',4.3),
('R014','A2B','Coimbatore',4.4),
('R015','Truffles','Bangalore',4.6);

select *from restaurant_info;

CREATE TABLE menu_info (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(30),
    price DECIMAL(6,2),
    restaurant_id CHAR(5),
    FOREIGN KEY (restaurant_id) REFERENCES restaurant_info(restaurant_id)
);

desc menu_info;

INSERT INTO menu_info VALUES
(1,'Pizza',250,'R001'),
(2,'Burger',180,'R002'),
(3,'Dosa',120,'R003'),
(4,'Pasta',300,'R004'),
(5,'Sandwich',150,'R005');

select *from menu_info;


CREATE TABLE delivery_partner (
    partner_id CHAR(5) PRIMARY KEY,
    partner_name VARCHAR(30),
    phone VARCHAR(10),
    city VARCHAR(20)
);
desc delivery_partner;


INSERT INTO delivery_partner VALUES
('D001','Ramesh','9000000001','Bangalore'),
('D002','Suresh','9000000002','Mysore'),
('D003','Mahesh','9000000003','Delhi'),
('D004','Raj','9000000004','Mumbai'),
('D005','Vijay','9000000005','Chennai'),
('D006','Ajay','9000000006','Hyderabad'),
('D007','Kiran','9000000007','Pune'),
('D008','Manu','9000000008','Kolkata'),
('D009','Ravi','9000000009','Jaipur'),
('D010','Arun','9000000010','Surat'),
('D011','Varun','9000000011','Lucknow'),
('D012','Tarun','9000000012','Nagpur'),
('D013','Karthik','9000000013','Bhopal'),
('D014','Naveen','9000000014','Patna'),
('D015','Deepak','9000000015','Goa');

select *from delivery_partner;


CREATE TABLE delivery_orders (
    delivery_id INT PRIMARY KEY,
    status VARCHAR(20),
    delivery_time INT,
    partner_id CHAR(5),
    FOREIGN KEY (partner_id) REFERENCES delivery_partner(partner_id)
);
desc delivery_orders;


INSERT INTO delivery_orders VALUES
(1,'Delivered',30,'D001'),
(2,'Delivered',25,'D002'),
(3,'Pending',40,'D003'),
(4,'Delivered',20,'D004'),
(5,'Cancelled',0,'D005');

select *from delivery_orders;



CREATE TABLE payment_info (
    payment_id CHAR(5) PRIMARY KEY,
    payment_type VARCHAR(20),
    provider VARCHAR(20),
    currency VARCHAR(10)
);

desc payment_info;


INSERT INTO payment_info VALUES
('P001','UPI','GPay','INR'),
('P002','Card','Visa','INR'),
('P003','Cash','None','INR'),
('P004','UPI','PhonePe','INR'),
('P005','Card','MasterCard','INR'),
('P006','UPI','Paytm','INR'),
('P007','Card','Rupay','INR'),
('P008','UPI','AmazonPay','INR'),
('P009','Cash','None','INR'),
('P010','Card','Visa','INR'),
('P011','UPI','GPay','INR'),
('P012','Card','MasterCard','INR'),
('P013','UPI','PhonePe','INR'),
('P014','Cash','None','INR'),
('P015','Card','Rupay','INR');

select *from payment_info;


CREATE TABLE transactions_info (
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(8,2),
    status VARCHAR(20),
    payment_id CHAR(5),
    FOREIGN KEY (payment_id) REFERENCES payment_info(payment_id)
);
desc transactions_info;


INSERT INTO transactions_info VALUES
(1,250,'Success','P001'),
(2,300,'Success','P002'),
(3,150,'Pending','P003'),
(4,500,'Success','P004'),
(5,200,'Failed','P005');

select *from transactions_info;