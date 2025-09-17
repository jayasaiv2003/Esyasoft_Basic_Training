Use students

select* from Students2024


--Triggers 

create trigger trg_afterinsert
on Students2024
instead of INSERT
AS
BEGIN
   PRINT 'A new student record has been inserted!';
END;

create trigger trg_after
on Students2024
after insert
AS
BEGIN
   PRINT 'new ';
END;




insert into Students2024 values (11, 'jay');



