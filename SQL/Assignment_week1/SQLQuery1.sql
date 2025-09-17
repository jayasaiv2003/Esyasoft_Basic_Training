use db

select* from Employee

select* from Employee where id in (2,3,4)

select* from Employee where salary>200000

select*from Employee where salary between 100000 and 200000;

select* from Employee where name like '%a%'

update Employee set salary=NULL where id=-

select* from Employee where salary!=100000

select max(salary) as max_salary from Employee;

select min(salary) as min_salary from Employee;

select sum(salary) as total_salary from Employee;

alter table Employee alter column salary BIGINT

select count(*) from Employee;

select* from Employee

select* from Salary

insert into salary  


