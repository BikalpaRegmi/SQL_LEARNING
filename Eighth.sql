----------- Sub Queries  ------------

SELECT * FROM first.demo1;
select * from first.demo2;

select avg(Attendance_Percent) as average_attendence from first.demo2;

---Selects name and attendance percentage after left joining demo2. Used Sub query for checking attendance percentage less than avg.
select demo1.Name , demo2.Attendance_Percent from first.demo1 left join first.demo2 on first.demo1.ID = first.demo2.ID 
where Attendance_Percent < (select avg(Attendance_Percent) from first.demo2);

---Selects demo name where score is included in both of the table.
select demo1.Name from first.demo1 where demo1.Score in (select demo2.Score from first.demo2) ;