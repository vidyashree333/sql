create database office;
use office;

create table employe_info(
    employe_id char(4) primary key,
    employeName varchar(20) not null unique,
    psw varchar(20) check (char_length(psw) > 8),
    email varchar(30) check (email like '%@gmail.com'),
    phone_number bigint unique check (phone_number between 1000000000 and 9999999999)
);
desc employe_info;
INSERT INTO employe_info VALUES ('S003', 'vidya123', 'vidyashree123', 'vidya123@gmail.com', 9076543210);
desc employe_info;
select *from employe_info;

