1. select fname, lname from cust
2. select * from cust
3. select fname,area from cust
4. select distinct type from movie
5. select fname from cust where fname like '_a%';
6. select lname from cust where lname like 'S%' or lname like 'J%';
7. select * from cust where area like '_a%'
8.  select * from cust where area='da' or area='mu' or area='gh'
9. select * from cust where phone_no>5550000
10. select * from invoice where issue_date like '__-SEP-__'
11. select * from invoice where cust_id like 'a01' or cust_id like 'a02'
12. select * from movie where type like 'action' or type like 'comedy'
13.  select * from movie where price>150 and price<=200
14. select title, price*15 from movie where price>150
15. select title, price*15 " new price" from movie where price>150 
16. select * from movie order by title asc
17. select title, type from movie where type != 'horror'
18. select title , sqrt( price) from movie
19. select title, (price - 100)/price from movie where title= 'home alone'
20. select fname, lname, area,cust_id from cust
21. select fname  from cust
22. select mv_no, title , type  from movie where star like 'm%'
23. select mv_no,inv_no from invoice where inv_no<'i05'
24. select  count(fname) from cust
25. select sum(price) from movie 
26. select avg(price) from movie
27. select max(price) "max_price" , min (price)  "min_price" from movie
28. select  count(title) from movie where price >=150
29.A. select 'The Invoice No of customer ID ' || invoice.cust_id || ' is ' || inv_no || ' and Movie No. is ' || invoice.mv_no from cust, movie, invoice where cust.cust_id=invoice.cust_id and movie.mv_no= invoice.mv_no 
29.B. select invoice.cust_id|| ' has taken Movie No. '|| invoice.mv_no ||' on ' || issue_date || ' and will return on '|| return_date from cust, movie, invoice where cust.cust_id=invoice.cust_id and movie.mv_no= invoice.mv_no
30. SELECT avg(price), type FROM movie GROUP BY type
31. SELECT COUNT(mv_no), type FROM movie GROUP BY type
32. SELECT count(mv_no), type FROM movie where type='thriller' or type='comedy' GROUP BY type
