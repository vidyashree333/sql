create database School1;
use School1;

create table user_info(
    user_id char(4) primary key,
    userName varchar(20) not null unique,
    psw varchar(20) check (char_length(psw) > 8),
    email varchar(30) check (email like '%@gmail.com'),
    phone_number bigint unique check (phone_number between 1000000000 and 9999999999)
);
desc user_info;
INSERT INTO user_info VALUES ('U001', 'john123', 'password123', 'john123@gmail.com', 9876543210);
desc user_info;
select *from user_info;

