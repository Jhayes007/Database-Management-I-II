Use Tal;

Select *
From Customer;

Select customer_name from customer;

select customer_name, balance, credit_limit from customer;

select customer_name, balance, credit_limit from customer where balance > 
credit_limit;

select customer_name, balance, credit_limit from customer where credit_limit
>= 5000 and credit_limit <= 10000;


select customer_name, balance, credit_limit from customer where credit_limit
> 5000 and credit_limit < 10000;

select customer_name, balance, credit_limit, (credit_limit * 1.10) from customer;

select customer_name, balance, credit_limit, (credit_limit * 0.10) from customer;

select customer_name, balance, credit_limit, (credit_limit * 0.95) from customer;

select customer_name, balance, credit_limit, (credit_limit - (credit_limit * 0.05)) 
As Decreased_limit from customer where (credit_limit * 0.95) < 7000; 

Select * from customer where customer_name like 'C%';
Select * from customer where customer_name like '%C%';
Select * from customer where customer_name like '%p';


