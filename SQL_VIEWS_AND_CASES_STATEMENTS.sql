-- VIEW(It is a virtual )
create view IT_employee as
(select * from employees where department = "IT" );

select * from IT_employee
where salary >70000;

#FETCH THE SUBCATEGORY WISE TOTAL SALES
use joins;
# creating a view tempory table 
create view sub_category as (
select sub_category,sum(total_amount) from sales1
group by sub_category
order by sum(total_amount) desc);
select * from sub_category;

-- to drop view
use bn_073;
drop view IT_employee;


####################################### CASE STATEMENT ############################################
#CASE STATEMENT

#CASE
#WHEN CONDITION 1 THEN RESULT 1
#WHEN CONDITION 2 THEN RESULT 2
#WHEN CONDITION 3 THEN RESULT 3
#WHEN CONDITION 4 THEN RESULT 4
#WHEN CONDITION NTH THEN RESULT NTH
#END AS ALIAS

##WHY TO USE CASE STATEMENT OVER OTHER 


select *,
case  
      when salary <= 60000 then "low salary"
      when salary <= 72000 then "medium salary"
	  else "high saalry"
end as salary_flag 
from employees;

#PROVIDE THE ID TO EACH DEPARTMENT 
select *,
case Department 
	when "IT" then 101
    when  "HR" then 102
    When "Marketing" then 103
    else 104
end as department_ID 
from employees;

## THE COMPANY GIVE SOME INSENTIVE TO THERE EMPLOYEE AS PER THERE DEPARTMENT 
## IT = 15000, MARKETING = 18000, FINANCE = 12000, HR = 10000
## FIND THE FINAL AMOIUNT WHICH COMAPNY WILL PAY TO THE EMPLOYEES.

SELECT *,
case department 
	when "IT" then salary + 15000
    when "marketing" then salary + 18000
    when "Finance" then salary + 12000
    else salary + 10000
end as final_amount from employees;

use joins;
select * from sales1;
select *,
case
      when price_per_unit <=10000 then "Buget product"
      else "Premimum producrt"
end as product_qulaity from sales1;


-- STORE PROCEDURE 

use bn_073;
select * from employees;

DELIMITER &&
create procedure sp()
begin
select * from employees;
end&&
DELIMITER ;

call sp();

#Anorther query 
select * from employees
where department = 'IT';

DELIMITER &&
create procedure sp1()
begin 
select * from employees
where department = 'IT';
end&&
DELIMITER ;
call sp1();

#NEXT QUERY WITH PARAMETER
#IN PARAMETER
DELIMITER &&
create procedure sp2(dept varchar(20))
begin
select * from employees where department = dept;
end&&
DELIMITER ;
call sp2('HR');

#IN PARAMETER
DELIMITER &&
create procedure sp3(salary int, increment decimal(10,2))
begin
select salary + (salary * increment);
end&&
DELIMITER ;
call sp3(60000,0.1);

# TO DROP THE PROCEDURE 
drop procedure sp;

#OUT PARAMETER 
DELIMITER &&
create procedure Increment(salary int , increment decimal(10,2), out new_salary decimal(15,2))
Begin
	select salary + salary * increment into new_salary;
end &&
DELIMITER ;
call Increment(50000,0.2,@incremented_salary);
select @incremented_salary;

## NEXT QUESTION
DELIMITER &&
create procedure AVG_SAlary(in department varchar(20),  out dept_avg decimal (20,2))
begin 
select avg(salary) into dept_avg from employees where Department = department;
end &&
DELIMITER ;
call AVG_SAlary("HR",@avg_sal);
select @avg_sal;

## IN OUT PARAMETER 
## act as both input and outpt 
## caller sends a output and recives a modified output.
DELIMITER &&
create procedure sp4(inout salary int)
begin
     set salary = salary +10000;   ## 7000 + 1000 = 8000
end &&
DELIMITER ;

set @salary = 70000;
call sp4(@salary);
select @salary;

-- TIGGER

