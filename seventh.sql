--------------- Join ------------------

SELECT * FROM first.demo1;
select * from first.demo2;

---Intersection (demo1 ∩ demo2). Returns rows present in both tables with common primary key.
select demo1.ID, demo1.Name , demo2.Attendance_percent from first.demo1 inner join first.demo2 on demo1.ID = demo2.ID ;

---Intersection (demo1 ∩ demo2). With group by.
select demo2.Internship_Status , count(demo1.ID) as count  from first.demo1 inner join first.demo2 on demo1.ID = demo2.ID group by demo2.Internship_Status;

---(demo1 ∪ (demo1 ∩ demo2)). Returns all rows from the left table. If no match, NULLs in right table.
select demo1.ID, demo1.Name , demo2.Attendance_percent from first.demo1 left join first.demo2 on demo1.ID = demo2.ID ;

---(demo2 ∪ (demo1 ∩ demo2)). Returns all rows from the right table. If no match, NULLs in left table. 
select demo1.ID, demo1.Name , demo2.Attendance_percent from first.demo1 right join first.demo2 on demo1.ID = demo2.ID ;

---Union (demo1 ∪ demo2). Returns all rows from both tables, filling NULLs where no match exists.
SELECT * FROM first.demo1 CROSS JOIN first.demo2;