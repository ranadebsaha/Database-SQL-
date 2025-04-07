Create table cust
(cust_id varchar2(3) primary key, lname varchar2(15), fname varchar2(15) not null, area varchar2(2), phone_no number(8));

create table movie
( mv_no varchar(2) primary key, title varchar2(25),
type varchar2(10), star varchar2(25), price number(8,2));

create table invoice
( inv_no varchar2(3) primary key, mv_no varchar(2) references movie, cust_id varchar2(3) references cust, issue_date date, return_date date);

create table student_details
  ( sid char(6) primary key, name varchar(25), address varchar(35), branch char(5), adm_date date, check(branch in ('cse', 'it', 'ee','ece','mca','bca')), check(adm_date>to_date('01-06-2002','DD-MM-YYYY')));
create table student_marks
  ( sid char(6) references student_details(sid), m_sub1 number(3), m_sub2 number(3),m_sub3 number(3), check(m_sub1>=0 and m_sub1<=100),check(m_sub2>=0 and m_sub2<=100),check(m_sub3>=0 and m_sub3<=100))

create table client_master_71(
client_no varchar2(6) primary key check(client_no like 'C%'), name varchar2(20) not null, city varchar2(15), bal_due 
number(10,2));

create table product_master_71(
product_no varchar2(6) primary key check(product_no like 'P%'), description varchar2(30) not null, profit_percent 
number(8,2) not null, unit_measure varchar2(15) not null, qty_on_hand number(10) not null,reorder_lvl number(10) 
not null,sell_price number(10,2) not null check(sell_price >0), cost_price number(10,2) not null check(cost_price >0));

create table salesman_master_71(
salesman_no varchar2(8) primary key check(salesman_no like 'S%'), salesman_name varchar2(25) not null,city 
varchar2(25), sal_amt number(10,2) not null check(sal_amt >0), tgt_to_get number(10,2) not null check(tgt_to_get 
>0), ytd_sales number(10,2) not null);
