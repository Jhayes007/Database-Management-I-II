/* Name: Jalill Hayes
Chapter 4: Update queries on Tal Distributors, pg. 188
Date: March 18, 2019
*/

Use TAL;

/* Q1 */
create table NonGame (item_num char(4), not null primary key, description char(30) null, 
on_hand decimal(4,0) null, category char(3), price decimal(6,2));

/* Q2 */
insert into NonGame select item_num, description, on_hand, category, price from item
where category != 'GME';

/* Q1 & Q2 */
 create table NonGAme2 As select item_num, description, on_hand, category, price from item 
 where category != 'GME';
 
 /* Q3 */
 Update NonGame set description = 'Classic Train Set' where item_num = 'DL51';
 
 /* Q4 */
 Update NonGame set price = price * 1.02 where category = 'TOY';
 Update NonGame set price = price + (price * 0.02) where category = 'TOY'
 
 /* decreasing price by 2% */
update NonGame set price = price * 0.98 where category = 'TOY';
update NonGame set price = price - (price * 0.02) where category = 'TOY'

 /* Q5 */
 insert into NonGame values ('TL92','Dump Truck', 10, 'TOY', 59.95);
 
 /* Q6 */
 delete from NonGame where category = 'PZL';
 
 /* Q7 */
 update NonGame set category = null where item_num = 'FD11';
 
/* Q8 */
alter table NonGame add column ON_HAND_VALUE decimal(7,2);
alter table NonGame add ON_HAND_VALUE decimal(7,2);

/* Q8b */
update NonGame set ON_HAND_VALUE = on_hand * price;

/* Q9 */
 alter table NonGame modify column decription char(40);
 alter table NonGame modify description char(40);
 
 /* Q10 */
 drop table NonGame;
 
 /* Q11 */
 alter table NonGame drop column on_hand_value;
 alter table NonGame drop on_hand_value;

source: https://oracle-base.com/articles/8i/dropping-columns

