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
