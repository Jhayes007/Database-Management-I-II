/*
declare
    counter number(3) := 1;
begin
    while counter >= 1 loop
    DBMS_OUTPUT.PUT_LINE(counter);
    counter := counter - 1;
    end loop;
end;
*/ 

/*
declare
    counter number(3);
begin
    for counter in reverse 1..10 loop
    DBMS_OUTPUT.PUT_LINE(counter);
     end loop;
end;
*/

declare
    counter number(3) := 1;
begin
     loop
    DBMS_OUTPUT.PUT_LINE(counter);
    exit when counter >= 10;
    counter := counter + 1;
     end loop;
end;
