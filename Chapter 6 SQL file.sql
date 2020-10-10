use TAL;
 
select * from customer; 
 
create table customer_tmp select * from customer;

update customer_tmp set credit_limit = credit_limit *
1.10 where city = 'Fullton';


start transaction;
update customer_tmp set credit_limit = credit_limit *
1.20 where city = 'Grove';

select * from customer_tmp;
rollback;

select * from customer_tmp;

delete from customer_tmp where city = 'Grove';

alter table customer_tmp add phone char(10);
update customer_tmp set phone = '000-000-0000';

alter table customer_tmp modify Phone char(12);
alter table customer_tmp modify column Phone char(15);
alter table customer_tmp drop column Phone;

drop table customer_tmp; 

create view GroveCustomers AS
select * from customer where city = 'Grove'; 

select * from GroveCustomers; 
insert into GroveCustomers(customer_num, customer_name, city) values 
('321', 'XYZ','Grove');

select * from customer;