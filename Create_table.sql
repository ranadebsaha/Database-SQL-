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
