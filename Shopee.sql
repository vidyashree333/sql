create database Shopee;
use Shopee;

create table customerr_info(
    customerr_id char(4) primary key,
    customerName varchar(20) not null unique,
    psw varchar(20) check (char_length(psw) > 8),
    email varchar(30) check (email like '%@gmail.com'),
    phone_number bigint unique check (phone_number between 1000000000 and 9999999999)
);
desc customerr_info;
INSERT INTO customerr_info VALUES ('A005', 'yogesh333', 'yogesh123', 'yogesh23@gmail.com', 9742543210);
desc customerr_info;
select *from customerr_info;

