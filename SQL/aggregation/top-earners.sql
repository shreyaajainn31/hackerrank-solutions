/*

We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:

Column        Type
employee_id   Integer
name          String
months        Integer
salary        Integer

Solution:
*/

select max(salary * months), count(salary * months) from employee where (salary * months) =(select max(salary * months) from employee);
