------------ View, Set operators ---------------

---Creates a virtual table of top five students.
create view first.top_five as
select * from first.demo1 order by Score desc limit 5;

---Creates virtual table of average value of attendence.
create view first.avg_of_attandence as
select avg(Attandance_Percent) as average_attendance from first.demo2;

---Returns all unique rows from both queries (A^B).
select ID from demo1
union
select ID from demo2 ;

---Returns all rows, including duplicates.
select ID from demo1
union all
select ID from demo2;

---Returns only rows present in both queries (AvB).
select * from first.demo1 where ID in (Select ID from first.demo2);

---Returns rows in first query but not in second (A-B).
select * from first.demo1 where ID not in (select ID from first.demo2);