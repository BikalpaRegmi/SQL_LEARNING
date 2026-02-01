------------------ Stored Procedures --------------------

---initialize the database that we are gonna use.
USE first;

---creates a procedure that returns all the table of esdcsv everytime we call it.
delimiter $$
create procedure get_all_employees()
begin
	select * from esdcsv;
end $$
delimiter ;

call get_all_employees();

---creates a procedure that takes the parameter of department name and shows department that is passed to parameter.
delimiter $$
create procedure show_department(in dept varchar(33))
begin
	select * from esdcsv where Department=dept;
end $$
delimiter ;

call show_department("Sales") ;

---creates a procedure that do not take any parameter but returns some values that can be obtained by @.
delimiter $$
create procedure get_count_of_employees(out tot int)
begin
	select count("EEID") into tot from esdcsv;
end $$
delimiter ;

call get_count_of_employees(@x);
select(@x);