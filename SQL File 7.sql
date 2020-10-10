/* Name: Jalill Hayes
	Chapter 4: Multiple Table Queries on TAL Distributors
	Date: March 6, 2019
    
*/

Use TAL;

/* Q1 */
select order_num, order_date, c.customer_num, customer_name from orders o, customer c 
where o.customer_num = c.customer_num; 

/* Q2 */
select * from orders; 
select order_num, order_date, c.customer_num, customer_name from orders o, customer c 
where o.customer_num = c.customer_num and order_date = '2015/10/15';

/* Q3 */
select o.order_num, order_date, item_num, num_ordered, quoted_price from orders o, 
order_line ol where o.order_num = ol.order_num;    

/* Q4 */
select customer_num, customer_name from customer where customer_num IN (select
customer_num from orders where order_date = '2015/10/15');

/* Q5 */
select customer_num, customer_name from customer c where exists (select
customer_num from orders o where c.customer_num = o.customer_num and order_date = '2015/10/15');

/* Q6 */
select customer_num, customer_name from customer where customer_num NOT IN (select
customer_num from orders where order_date = '2015/10/15');

/* Q7 */
select o.order_num, order_date, i.item_num, description, category from orders o, 
order_line ol, item i where o.order_num = ol.order_num and ol.item_num = i.item_num; 

/* Q8 */
select o.order_num, order_date, i.item_num, description, category from orders o, 
order_line ol, item i where o.order_num = ol.order_num and ol.item_num = i.item_num
order by category, order_num; 

/* Q9 */
select rep_num, last_name, first_name from rep where rep_num IN (select rep_num
from customer where credit_limit = 10000);

/* Q10 */
select r.rep_num, last_name, first_name from rep r, customer c where r.rep_num = c.
rep_num and credit_limit = 10000;

/* Q11 */
select customer_num, customer_name from customer where customer_num IN (select
customer_num from orders where order_num IN (select order_num from order_line where
 item_num IN (select item_num from item where description = 'Rocking Horse'))); 
 
 /* Q12 */
 select fi.item_num, fi.description, fi.category, si.item_num, si.description, si.
 category from item fi, item si where fi.category = si.category and fi.item_num < si 
 .item_num;
 
 /* Q13 */
 select order_num, order_date from orders where customer_num IN (select customer_num
 from customer where customer_name = 'Johnson''s Department Store'); 
 
  /* Q14 */
  select order_num, order_date from orders where order_num IN (select order_num from
  order_line where item_num IN (select item_num from item where description = 'Fire
  Engine'));
  
  select count(tripid) from trip where tocity = 'ME' or tocity = 'MA'; 
  select count(reservationid) from reservation where trip_price > 20 and trip_price < 75;
  select count(tripid), type from trip group by type;
  
  /* Q16b */
   select order_num, order_date from orders where customer_num in (select customer_num
  from customer where customer_name = 'Almondton General Store' and order_num IN
 (select order_num, order_date from orders where order_num in (select order_num from
  order_line where item_num in (select item_num from item where description = 'Fire
  Engine'))));
  
  /* Q17 */
 select order_num, order_date from orders where customer_num in (select customer_num
  from customer where customer_name = 'Almondton General Store')
  UNION
 select order_num, order_date from orders where order_num in (select order_num from
  order_line where item_num in (select item_num from item where description = 'Fire
  Engine'));
  
  /* Q21 */
  select customer_num, customer_name, last_name, first_name from customer c, rep r 
  where c.rep_num = r.rep_num order by c.rep_num; 