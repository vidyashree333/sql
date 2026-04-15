create database library;
use office;

create table customer_info(
    customer_id char(4) primary key,
    customerName varchar(20) not null unique,
    psw varchar(20) check (char_length(psw) > 8),
    email varchar(30) check (email like '%@gmail.com'),
    phone_number bigint unique check (phone_number between 1000000000 and 9999999999)
);
desc customer_info;
INSERT INTO customer_info VALUES ('A005', 'Ramya123', 'RamyaBK123', 'RamyaBK23@gmail.com', 7676543210);
desc customer_info;
select *from customer_info;

