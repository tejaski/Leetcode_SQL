/* 176. Second Highest Salary */


SELECT isnull(max(a.Salary),NULL) AS SecondHighestSalary
FROM (
SELECT rank() over(order by salary desc) as rn, salary from  Employee) a  
WHERE rn =2