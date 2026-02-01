------------ Groupby , Having ---------------

SELECT * FROM first.esdcsv;

---Selects country as key and count of EEID as value
select Country , count(EEID) as count from first.esdcsv group by Country ;

---Selects Department as key and count of EEID as value also sorts the row according to values.
select Department , count(EEID) as count from first.esdcsv group by Department order by count(EEID) desc ;

---Selects city as key and counts the EEID as value. Displays only those key and values whose count is greater than 60.
select City , count(EEID) as count from first.esdcsv group by City having count(EEID)>60;

---Selects the Job Title as key and sum of annual Salary as values. Displays only those key and value whose sum is greater than 9,999,999.
select `Job Title` , sum(replace(replace(`Annual Salary` , ',' , ''), '$' , '')) as `total salary` from first.esdcsv group by `Job Title` having 
sum(replace(replace(`Annual Salary` , ',' , ''), '$' , '')) > 9999999;