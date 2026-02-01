---------------- String Functions ----------------

---creates a new column with column names where all Full name alphabets are capital.
select *,  upper(`Full Name`) as names from first.esdcsv;

---counts the number of digit in annual salary.
select length(`Annual Salary`) as digitcount from first.esdcsv;

---trims or removes the unnecessary spaces at start and end of the string.
select trim(Department) as `clean Department` from first.esdcsv;

---removes E from EEID
select substring(EEID,2,5) as Removed_E ,`Full Name` from first.esdcsv;

---replaces sr with nothing ie. removes sr.
select replace(`Job Title`,'Sr.','') as removed_SR, `Job Title` from first.esdcsv; 

---concatinates name with gender ex:Bikalpe-male
select concat(`Full Name` , ' - ', Gender) as concatinated from first.esdcsv;

---Changes the values if Male then m and if female then f.
select case 
           when lower(Gender)="Male" then "m" 
            when lower(Gender)="Female" then "f"
            else "other"
       end as gender_cleaned , Gender from first.esdcsv ;     