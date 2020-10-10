create or replace procedure arith(x in number, y in number) as
    addition number(5,2);
    subtract number(5,2);
    multiply number(5,2);
    divide number(5,2);
    

begin
    addition := x + y;
    subtract := x - y;
    multiply := x * y;
    divide := x / y;
    
    dbms_output.put_line(x || '+' || y || '=' || addition);
    dbms_output.put_line(x || '-' || y || '=' || subtract);
    dbms_output.put_line(x || '*' || y || '=' || multiply);
    dbms_output.put_line(x || '/' || y || '=' || divide);
end arith;