create database Hostelll;
use Hostelll;

create table studentttt_info(
    studentttt_id char(4) primary key,
    studentName varchar(20) not null unique,
    psw varchar(20) check (char_length(psw) > 8),
    email varchar(30) check (email like '%@gmail.com'),
    phone_number bigint unique check (phone_number between 1000000000 and 9999999999)
);
desc studentttt_info;
INSERT INTO studentttt_info VALUES ('A00ty5', 'yogesh', 'yogesh123', 'yogesh2', 9742897797543210);
0	5	22:20:08	INSERT INTO studentttt_info VALUES ('A00ty5', 'yogesh', 'yogesh123', 'yogesh2', 9742897797543210)	Error Code: 1406. Data too long for column 'studentttt_id' at row 1	0.000 sec

desc studentttt_info;
select *from studentttt_info;
# studentttt_id, studentName, psw, email, phone_number
  null            null       null   null   null



								

