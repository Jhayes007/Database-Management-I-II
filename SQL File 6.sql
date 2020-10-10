use TAL;

select * from customer;

select * from rep; 

select * from customer, rep where customer.rep_num = rep.
rep_num;

select * from customer.rep_num customer_name, last_name, first_name
  customer, rep where customer.rep_num = rep.rep_num;
 
select * c.rep_num, customer_name, last_name, first_name
 from customer c, rep r where c.rep_num = r.rep_num;
 
 select * c.rep_num, customer_name, last_name, first_name, c.city 
from customer c, rep r where c.rep_num = r.rep_num and c.city = 'Grove';

 select * c.rep_num, customer_name, last_name, first_name, 
 from customer c, JOIN rep r ON c.rep_num = r.rep_num where c.city = 'Grove';
 
 select * from customer c RIGHT OUTER JOIN rep r ON c.rep_num = r.rep_num; 
 
 select * from rep, customer;
 
select * from customer, rep, orders where customer.rep_num = rep.rep_num
and customer.customer_num = orders.customer_num; 


select customer.customer_name from customer c where rep_num IN
(select customer_num from rep where rep_num '45' );
