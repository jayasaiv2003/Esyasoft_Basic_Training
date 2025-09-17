use db



CREATE TABLE SalaryAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT,
    OldSalary INT,
    NewSalary INT,
    ChangeDate DATETIME DEFAULT GETDATE()
);
 
 
 
CREATE TRIGGER trg_AuditSalaryChange
ON Employee
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Salary) -- Run only if Salary column is updated
    BEGIN
        INSERT INTO SalaryAudit (emp_id, OldSalary, NewSalary)
        SELECT 
            d.emp_id,
            d.Salary AS OldSalary,
            i.Salary AS NewSalary
        FROM deleted d
        INNER JOIN inserted i ON d.emp_id = i.emp_id;
    END
END;
 
 
update employee set salary=981121 where emp_id=4;
 
select * from SalaryAudit