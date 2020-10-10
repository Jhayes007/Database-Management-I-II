/* Name: Jalill Hayes 
	Chapter 3: Tal Distributions
*/ 
Create database TAL; 
Use TAL; 

/* Q1 */ 
Create table Sales_Rep (rep_num char(15) primary key, last_name varchar(15) not null, first_name char(15) not null, street char(15), city char(15), state char(2), postal_code char(5), commission numeric(7,2), rate numeric(3,2));
Describe Sales Rep;

/* Q2 */
Insert into Sales_Rep values('35', 'Lim', 'Louise', '535 Vincent Dr', 'Grove', 'CA', '90092', 0.00, 0.05);
Select * from Sales_Rep;

Insert into Sales_Rep(rep_num, last_name, first_name, street, city, state, postal_code) values('64', 'Johnson', 'Kevin', '123 Mull Dr', 'Grove', 'CA', '90092');
Select * from Sales_Rep;

/* Q3 */
Drop table Sales_Rep; 

/* Q5 */ 
describe Customer;
describe Rep;
describe Orders;
describe order_line;
describe Item;

/* Q6 */ 
Select * from Customer;
Select * from Rep;
Select * from Orders;
Select * from Order_line;
Select * from Item; 
