select *
from parks_and_recreation.employee_demographics as dem -- aliasing
inner join parks_and_recreation.employee_salary as sal -- inner joining the two tables
	on dem.employee_id=sal.employee_id -- here the two tables having same emp id will displayed  
;

-- selecting thee speccific columns
select dem.employee_id,age,gender
from parks_and_recreation.employee_demographics as dem -- aliasing
inner join parks_and_recreation.employee_salary as sal -- inner joining the two tables
	on dem.employee_id=sal.employee_id -- here the two tables having same emp id will displayed  
;

-- outer joins
-- -- -- 1.left join
select *
from parks_and_recreation.employee_demographics as dem -- aliasing
left join parks_and_recreation.employee_salary as sal -- left joining the two tables
	on dem.employee_id=sal.employee_id -- here the two tables having same emp id will displayed  
;

-- -- -- 2.right join
select *
from parks_and_recreation.employee_demographics as dem -- aliasing
right join parks_and_recreation.employee_salary as sal -- right joining the two tables
	on dem.employee_id=sal.employee_id -- here the two tables having same emp id will displayed  
;

-- Self Join
-- secret santa is the example for this self join this would bee very understandable
select emp1.employee_id as emp_santa,
emp1.first_name as santa,
emp2.employee_id as child,
emp2.first_name as child_name
from parks_and_recreation.employee_salary as emp1
join parks_and_recreation.employee_salary as emp2
	on emp1.employee_id+2=emp2.employee_id
;

-- joining multiple tables together
select *
from parks_and_recreation.employee_demographics as dem -- aliasing
inner join parks_and_recreation.employee_salary as sal -- inner joining the two tables
	on dem.employee_id=sal.employee_id -- here the two tables having same emp id will displayed  
inner join parks_and_recreation.parks_departments as pd
	on  sal.dept_id=pd.department_id
;