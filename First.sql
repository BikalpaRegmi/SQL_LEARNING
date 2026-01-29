---Displays everything from table.
select * from first.esdcsv ;

---Displays only EEID and Department column of the table
select EEID , Department from first.esdcsv ;

---Displays everything from table if salary is greater than 100k. Replace is required to replace the special characters.
SELECT * FROM first.esdcsv WHERE REPLACE(REPLACE(TRIM(`Annual Salary`), '$', ''), ',', '') > 100000;

---Displays everything if the name starts with D and whose department is accounting.
select * from first.esdcsv where `Full Name` like "D%" and Department in ("Accounting");

---Displays everything if the full name starts with D or E and who are not in certain departments.
select * from first.esdcsv where (`Full Name` like "D%" or `Full Name` like "E%") and Department not in ("IT","Finance","Engineering","Accounting","Marketing");

---Displays name,ethnicity and age from alphatebical ascending of ethnicity and age decending.
select `Full Name`, Ethnicity,Age from first.esdcsv order by `Ethnicity` asc , Age desc; 

---Displays everything but only 10 rows from beginning to 10 whose salary is between 250k and 300k.
select * from first.esdcsv where replace(replace(trim(`Annual Salary`) , '$', ''),',','') between 250000 and 300000 limit 1,10;