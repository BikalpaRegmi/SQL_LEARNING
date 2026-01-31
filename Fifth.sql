SELECT * FROM sakila.payment;

---creates a new column and write values according to cases.
select payment_id , amount , 
case 
	when amount<5 then "Cheap Purchase"
    when amount>=5 and amount<10 then "Moderate Purchase"
    else "Expensive purchase"
end as purchase_type from sakila.payment ;