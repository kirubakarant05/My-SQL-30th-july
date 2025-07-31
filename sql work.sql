create database employees;
use employees;
create table employeestable(employee_id int primary key,first_name varchar(255),last_name varchar(255),salary int,joining_date date,department varchar(255));
insert into employeestable values(1,"Venkatesh","S",100000,"2015-08-28","BANKING");
insert into employeestable values(2,"Ragavi","P",75000,"2015-08-28","BUSINESS"),
(3,"Gopinath","C",50000,"2016-03-02","PHARMA"),
(4,"Dinesh","G",50000,"2016-03-01","INSURANCE"),
(5,"Saibabu","E",40000,"2017-07-08","SOFTWARE"),
(6,"Hasan","S",29000,"2017-07-08","MANUFACTURING"),
(7,"Divya","P",33000,"2017-07-08","HEALTHCARE"),
(8,"Aravindan","R",40000,"2017-07-08","HEALTHCARE"),
(9,"Sathish","MD",45000,"2016-03-02","AUTOMOBILE"),
(10,"Prasanth","PKP",34000,"2016-03-02","INSURANCE"),
(11,"Vijay","R",25687,"2016-03-06","BUSINESS"),
(12,"Sivakumar","K",54789,"2016-03-02","SOFTWARE");
select * from employeestable;

-- 2. Get First_Name,Last_Name from employee table
select first_name,last_name from employeestable;

-- 3. Get First_Name from employee table using alias name “Employee Name”
select first_name as Employee_Name from employeestable;

-- 4. Get First_Name from employee table in upper case
select upper(first_name) from employeestable;

-- 5. Get First_Name from employee table in lower case
select lower(first_name) from employeestable;

-- 6. Get unique DEPARTMENT from employee table
select distinct department from employeestable;

-- 7. Select first 3 characters of FIRST_NAME from EMPLOYEE
select substring(first_name,1,3) from employeestable;

-- 8. Get position of 'a' in name 'ragavi' from employee table
select first_name,position("a"in first_name) from employeestable;

-- 9. Get FIRST_NAME from employee table after removing white spaces from right side
select ltrim(first_name),rtrim(first_name) from employeestable;

-- 10. Get FIRST_NAME from employee table after removing white spaces from left side
select ltrim(first_name),rtrim(first_name) from employeestable;

-- 11. Get length of FIRST_NAME from employee table
select length(first_name) from employeestable;

-- 12. Get First_Name from employee table after replacing 'a' with '$'
select replace(first_name,"a","$") from employeestable;

-- 13. Get First_Name and Last_Name as single column from employee table separated by a '_'
select concat(first_name,"_",last_name) from employeestable;

-- 14. Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
select first_name,year(joining_date),month(joining_date),year(joining_date) from employeestable;

-- 15.Get all employee details from the employee table order by First_Name Ascending
select * from employeestable order by first_name asc;

-- 16. Get all employee details from the employee table order by First_Name descending
select * from employeestable order by first_name desc;

-- 17. Get all employee details from the employee table order by First_Name Ascending and Salary descending
select * from employeestable order by first_name asc,salary desc;

-- 18. Get employee details from employee table whose employee name is “Dinesh”
select * from employeestable where first_name = "Dinesh";

-- 19. Get employee details from employee table whose employee name are “Dinesh” and “Roy”
select * from employeestable where first_name = "Dinesh" or "Roy";

-- 20. Get employee details from employee table whose employee name are not “Dinesh” and “Roy”
select* from employeestable where first_name = "Dinesh" or not first_name= "Roy";

-- 21. Get all the details of the employee whose salary is greater than 60000.
select * from employeestable where salary > 60000;

-- 22. Get all the details of the employee whose salary is between 50000 to 70000
select * from employeestable where salary > 50000 and salary <70000;

-- 23. Get first name and last name as single column separated by space of the employee whose salary is less than 50000
select concat(first_name," ",last_name) from employeestable where salary <50000;

-- 24. Get first name and salary, arrange it by salary in ascending order.
select first_name,salary from employeestable order by  salary;

-- 25. Get all the details of the employee whose salary is between 50000 to 70000 and arrange them by their first name as ascending order.
select * from employeestable where salary >= 50000 and salary <=70000 order by first_name;


-- 31/07/2025
-- wildcard search

-- 21 to 23.get the name with the given letter in the  position 
select * from employeestable where first_name like"s%";
select * from employeestable where first_name like "%i%";
select * from employeestable where first_name like "%n";

-- Pattern matching 

-- 24. Get employee details from employee table whose first name ends with 'n' and name contains 4 letters
select * from employeestable where first_name like "____n";

-- 25. Get employee details from employee table whose first name starts with 'J' and name contains 4 letters
select * from employeestable where first_name like "j____";

-- 26. Get employee details from employee table who’s Salary greater than 60000
select * from employeestable where salary >60000;

-- 27. Get employee details from employee table who’s Salary less than 80000
select * from employeestable where salary <80000;

-- 28. Get employee details from employee table who’s Salary between 50000 and 80000
select * from employeestable where salary >=50000 and  salary <=80000;

-- 29. Get employee details from employee table whose name is venkatesh and ragavi
select * from employeestable where first_name in("venkatesh","ragavi");

-- SQL DATE Functions

-- 30. Get employee details from employee table whose joining year is “2015”
select * from employeestable where year(joining_date) ="2015";

-- 31. Get employee details from employee table whose joining month is “January”
select * from employeestable where month(joining_date)="january";

-- 32. Get employee details from employee table who joined before January 1st 2017
select * from employeestable where joining_date<"2017-01-01";

-- 33. Get employee details from employee table who joined after January 31st 2016
select * from employeestable where joining_date>"2016-01-31";


-- mathematical function

select sum(salary) from employeestable;
select avg(salary) from employeestable;
select count(salary) from employeestable;
select max(salary) from employeestable;
select min(salary) from employeestable;

-- get the number of employees in each department
select department,count(salary) from employeestable group by department;

-- 41. Get department,total salary with respect to a department from employee table.
select department,sum(salary) from employeestable group by department;

-- 42. Get department,total salary with respect to a department from employee table order by total salary descending
select department, sum(salary) from employeestable group by department order by sum(salary) desc ;

-- 43. Get department,no of employees in a department,total salary with respect to a department from employee table order by total salary descending
select department,count(department) from employeestable group by department order by count(salary)desc;

-- 44. Get department wise average salary from employee table order by salary ascending
select department,avg(salary) from employeestable group by department order by avg(salary) asc;

-- 45. Get department wise maximum salary from employee table order by salary ascending
select department ,max(salary) from employeestable group by department order by max(salary) asc;

-- 46. Get department wise minimum salary from employee table order by salary ascending
select department ,min(salary) from employeestable group by department order by min(salary) asc;

-- 47. Select no of employees joined with respect to year and month from employee table
select joining_date,count(joining_date) from employeestable group by joining_date order by year(joining_date) and month(joining_date);

-- 48. Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
select department,sum(salary) from employeestable group by department order by sum(salary) >80000 desc;











