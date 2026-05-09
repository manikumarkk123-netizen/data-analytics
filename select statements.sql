#normal select
SELECT * 
FROM parks_and_recreation.employee_demographics;

# selecting some specific column
SELECT first_name,age 
FROM parks_and_recreation.employee_demographics;

# selecting and calculating the  columns
SELECT first_name,
age,
age+20
FROM parks_and_recreation.employee_demographics;

#using distinct keyword helps to show the unqiue values
SELECT distinct first_name,gender
FROM parks_and_recreation.employee_demographics;