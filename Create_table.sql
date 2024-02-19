Create table cust
(cust_id varchar2(3) primary key, lname varchar2(15), fname varchar2(15) not null, area varchar2(2), phone_no number(8));

create table movie
( mv_no varchar(2) primary key, title varchar2(25),
type varchar2(10), star varchar2(25), price number(8,2));
