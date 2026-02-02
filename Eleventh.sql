--------------- Windows Functions ------------------

use first ;

---Shows the everything & aggregated value(average) of the column without collapsing any rows.
SELECT *, AVG(replace(replace(`Annual Salary` , ",", ""), "$" , "")) OVER (PARTITION BY Department) AS dept_avg_salary FROM esdcsv;

---Shows everything and the rank of each rows based on age.
select * , rank() over (partition by Department order by Age desc) as age_rank from esdcsv ;

---Shows the Difference between two rows annual salary.
select EEID, replace(replace(`Annual Salary` , ',' , ''),'$','') as `Salary PA`,
replace(replace(`Annual Salary` , ',' , ''),'$','') - lag(replace(replace(`Annual Salary` , ',' , ''),'$',''))
over (order by EEID)
as diff from esdcsv ;