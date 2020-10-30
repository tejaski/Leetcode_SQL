/* 177. Nth Highest Salary */


CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
select max(Salary)
from (
select *, dense_rank() over (order by Salary desc) salary_rank
from Employee
) t
where salary_rank = @N
    );
END




