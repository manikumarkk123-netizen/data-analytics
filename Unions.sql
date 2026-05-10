-- union
select first_name,last_name
from parks_and_recreation.employee_demographics
union                                                 -- defaultly removes the dups means DISTINCT
select first_name,last_name
from parks_and_recreation.employee_salary;

-- union all
select first_name,last_name
from parks_and_recreation.employee_demographics
union  all                                                -- shows all with dups
select first_name,last_name
from parks_and_recreation.employee_salary;

-- union
SELECT first_name, last_name, 'Old Lady' as Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Old Man'
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Highly Paid Employee'
FROM parks_and_recreation.employee_salary
WHERE salary >= 70000
ORDER BY first_name
;