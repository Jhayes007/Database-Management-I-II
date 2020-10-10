create or replace procedure st_select3(st_name in varchar2, st_age in number) as 
   Cursor st_cursor is
   select sid, sname, age
    from student where sname like st_name || '%' and age = st_age;
   
   st_rec student%rowtype;
     
begin
    open st_cursor;
 
    loop 
        fetch st_cursor into st_rec;
        exit when st_cursor%notfound;
        dbms_output.put_line(st_rec.sid || ' ' || st_rec.sname || ' ' || st_rec.age);

    end loop;
    
    
end st_select3;