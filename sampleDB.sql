/*
Database Structural SQL Commands
create table employee (empnum varchar2(5) primary key, empname varchar2(20));
describe employee;
alter table employee add age numeric(3);
drop table employee;

Database SQL Data Commands
insert into employee values ('E001', 'John Doe');
select * from employee;
insert into employee values ('E002', 'Jane Doe');
update employee set age = 32 where empname = 'Jane Doe';
delete from employee where empname = 'John Doe';
*/

declare 
    x number(2) := 10;
    y number(2) := 5;
    
begin
    if x < y then
    
    
    DBMS_OUTPUT.PUT_LINE('Value of x = ' || x ||' is less than value of y = ' || y );
    elsif  x < y then
    DBMS_OUTPUT.PUT_LINE('Value of x = ' || x ||' is greater than value of y = '|| y);
    else
        DBMS_OUTPUT.PUT_LINE('Not Sure!!');
    end if;
end;




