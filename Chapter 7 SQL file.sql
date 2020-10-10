/* Name: Jalill Hayes
Chapter 4: Update queries on Tal Distributors, pg. 221
Date: March 18, 2019
*/

Use TAL;

/* Q1a */
create view Major_customer as select customer_num, customer_name, balance,
credit_limit, rep_num from customer where credit_limit <= 10000;

/* Q1b */
select customer_num, customer_name from Major_Customer where balance > credit_limit;

/* Q1c */
select customer_num, customer_name from customer where credit_limit <= 10000 and 
balance > credit_limit; 

/* Q2a */
create view Item_Order as select item_num, description, price, o.order_num,
order_date, num_ordered, quoted_price from Orders o,  Order_line ol, Item i where o.order_num =
ol.order_num and i.item_num = ol.item_num

/* Q1b */
select item_num, description, order_num, quoted_price from Item_Order where
quoted_price > 100;

/* Q1c */
select i.item_num, description, o.order_num, quoted_price from Orders o, Order_line ol,
Item i where o.order_num = i.item_num = ol.item_num and quoted_price > 100;

/* Q3a */
create view Order_total as select order_num, (num_ordered * quoted_price) as
Order_Amount from order_line order by order_num;

/* Q3b */
select order_num, order_amount from order_total where order_amount > 500;

/* Q3b */
select order_num, (num_ordered * quoted_price) as Order_Amount from order_line where
(num_ordered * quoted_price) > 500 order by order_num;

/* Q4a */
grant select on item to Ashton;


/* Q4b */
grant insert on orders to Kelly, Morgan;
grant insert on orderline to Kelly, Morgan;

/* Q4c */
grant update on item to James; 

/* Q4d */
grant delete on customers to Danielson;

/* Q4e */
grant select (customer_num, customer_name, street, city, state, postal_code) on customer
to public;

/* Q4f */
grant index on orders to Perez; 

/* Q4g */
grant alter on item to Washington; 

/* Q4h */
grant all on orders to Grinstead;

/* Q5a */
revoke select on item from Ashton;

/* Q6a */
create index Item_Index1 on order_line(item_num);

/* Q6b */
create index Item_Index2 on item(category);

/* Q6c */
create index Item_Index3 on item(category, storehouse);

/* Q6c */
create index Item_Index4 on item(category desc, storehouse);

/* Q7 */
drop index Item_Index3 on item;

/* Q10 */
alter table customer check (credit_limit in (5000,7500,10000,15000));

create table students (sid char(5) primary key, sname char(30), gender char(1), check (
gender in ('F', 'M'))); 

insert into students values ('123', 'John Doe', 'C'); 