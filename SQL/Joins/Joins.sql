Use db

create table users(user_id int primary key, email varchar(20), name varchar(50));

create table books( product_id int primary key, title varchar(50), price float);

select* from users 

select* from books;

create table orders(
order_no int primary key, user_id int, product_id int, 
foreign key (product_id) references books(product_id), 
foreign key (user_id) references users(user_id));

select* from orders;


insert into users values(1, 'Callmebhai@gmail.com', 'Gopal'), (2, 'toxicmanji@gmail.com', 'Manjit'), 
(3,'kalajadu@gmail.com', 'SowmayDeep'), (4, 'Vimalpan@gmail.com', 'Jaisai'), (5,'ghostlaugh@gmail.com', 'Namitha');

insert into books values(101, 'MSSQL', 100),(102, 'half girlfriend', 699.0), (103,'Blackmagic', 700), (104,'Marfa',2000),(105, 'howtolaugh', 2001);

insert into orders values(401, 1 ,101),(402, 2,103), (403, 2, 102), (404, 3, 103),(405,3,104), (406,4,102),(407,5,105),(408,5,102);

--question 1

select *
from users u inner join orders o on u.user_id=o.user_id
inner join books b on o.product_id=b.product_id 

--qestion 2
--finding all orders
select* from orders o inner join books b on o.product_id=b.product_id ;

--question3
--find particular user who has ordered these book
select name from 
users u inner join orders o on u.user_id=o.user_id
inner join books b on o.product_id=b.product_id where title='half girlfriend'

--question4
--find books users has ordered
select title, name from 
users u inner join orders o on u.user_id=o.user_id
inner join books b on o.product_id=b.product_id group by title, name;

---question5

select name, sum(price) as totalprice from 
users u inner join orders o on u.user_id=o.user_id
inner join books b on o.product_id=b.product_id group by name;

--question6
--finding the most valuable user
--select name,sum(price) as totalprice from users u inner join orders o on u.user_id=o.user_id
--inner join books b on o.product_id=b.product_id where totalprice in  (select top 1 sum(price) as totalprice from 
--users u inner join orders o on u.user_id=o.user_id
--inner join books b on o.product_id=b.product_id group by name) group by name ;

select sum(u31.price)  from  users u11
   inner join orders u21 on u11.user_id=u21.user_id
inner join books u31 on u31.product_id= u21.product_id  group by u11.user_id order by sum(u31.price) desc OFFSET 0 ROWS      -- Skip the first 10 rows (first page)
FETCH NEXT 1 ROWS ONLY

--question7
--finding the range of books from high to low
select title, price from books order by price desc;

--question8
--highest price book
select top 1 title from books order by price desc;

--question9
--cheapest price book
select top 1 title from books order by price desc;


--   query-10:
select user_id,max(order_no) from orders group by user_id order by user_id desc OFFSET 0 ROWS      -- Skip the first 10 rows (first page)
FETCH NEXT 1 ROWS ONLY










