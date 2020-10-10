declare
    
   Cursor st_cursor (st_age number) is
   select sid, sname, age
    from student where age = st_age;
   
   st_rec student%rowtype;
   
   lv_age number(3) := 23;

   
begin
    open st_cursor(lv_age);
 
    loop 
        fetch st_cursor into st_rec;
        exit when st_cursor%notfound;
        dbms_output.put_line(st_rec.sid || ' ' || st_rec.sname || ' ' || st_rec.age);

    end loop;
    
    
end;