--------------- Date functions -----------------

SELECT * FROM sakila.payment;

---Results the date of each value of column.
select date(payment_date) as date from sakila.payment ;

---Returns the day of each value of column.
select day(payment_date) as day from sakila.payment;

---Results the dayName of the each value of column.
select dayname(payment_date) as dayName from sakila.payment ;

---Results the time of each value of column.
select time(payment_date) as time from sakila.payment;

---Results the month of each value in the column.
select month(payment_date) as month from sakila.payment;

---Results the month name of each value in the column.
select monthname(payment_date) as monthName from sakila.payment;

---Results the year of each value in the column.
select year(payment_date) as year from sakila.payment;

---Results the difference in days between two dates.
select datediff(last_update , payment_date) as difference_dates from sakila.payment;