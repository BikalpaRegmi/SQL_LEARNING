------------- Aggregating Functions , Rounding Functions ------------------

---Some aggregating function and CAST in order to convert string to decimal.
SELECT
    AVG(CAST(REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') AS DECIMAL(10,2))) AS avg_salary,
    SUM(CAST(REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') AS DECIMAL(10,2))) AS sum_salary,
    MIN(CAST(REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') AS DECIMAL(10,2))) AS min_salary,
    MAX(CAST(REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') AS DECIMAL(10,2))) AS max_salary
FROM first.esdcsv;


---Convert string annual salary to decimal.
select CAST(REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') AS DECIMAL(10,0)) as annnualSalary from first.esdcsv ;


---Removes the values after the point\decimal.
select truncate(CAST(REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') AS DECIMAL(10,2)), 0) AS avg_salary from first.esdcsv ;


---Removes the decimal value and increase the number by 1.{roundup}
select ceil(amount) as higher_amt from xyz;


---Removes the decimal value and decrease the number by 1.{rounddown}
select floor(amount) as lower_count from abc;