create database company
create table employees(emp_id int not null,first_name varchar(20),last_name varchar(20) not null,
salary int not null primary key (emp_id));
--table jo create ki hai use dekhne k liye
select*from employees
--table mai column add query
alter table employees add address varchar(200) 
alter table employees add job_code int 
--table mai data insert kese karate hai
insert into employees
(emp_id,first_name,last_name,salary,address,job_code)values
(101,'steven','king',100000,'noida',15563),
(102,'edwin','thomas',150000,'dheli',14526),
(103,'jyoti','diwakar',450000,'moradabad',32456),
insert into employees
(emp_id,first_name,last_name,salary,address,job_code)values
(104,'shewta','sharma',500000,'amroha',65984),
(105,'sonu','kumar',120000,'bareliy',15487),
(106,'vimal','diwakar',500000,'rampur',85462),
(107,'chaviraj','singh',300000,'gajrola',45268)
--delete command
delete from employees where first_name='sonu';
select*from employees where emp_id=102;
--sql logical operators [sample query (and,or,not )]
select *from employees where first_name='sonu' and salary=120000;
select *from employees where first_name='sonu' or salary=120000;
select *from employees where first_name='sonu' and salary!=100000;
--sql comparison operators(= equal to,> greter than,>= greter then or equal to,< less than,<= less than or eqal to ,<>or!= not equal to)
select*from employees where first_name='vimal' and salary<= 500000;
select*from employees where first_name='vimal' or salary>= 150000;
--sql special operators (between,like,is null,in,distinct)
select*from employees where salary between 120000 and  150000
select*from employees where first_name like 'sonu';
select*from employees where salary is null;
select*from employees where salary in(100000,300000,500000);
select DISTINCT(first_name)from employees;--only firstname ka column hi aayga
--sql group by clause
alter table employees add dept_id int ;
select *from employees
update  employees set dept_id=12 where emp_id=102
update  employees set dept_id=11 where emp_id=104
update  employees set dept_id=10 where emp_id=106
update  employees set dept_id=12 where emp_id=107
--maximum salary find karna
select max(salary)from employees
--second maximum salary find karna
select max(salary) from employees where salary<(select max(salary)from employees)
-- second maximum salary ki full data show hona
select * from employees where salary=(select max(salary) from employees where salary<(select max(salary)from employees))
--salary ka total karna
select sum(salary) from employees
--salary count karna
select count(salary)from employees





