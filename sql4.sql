use IBM

Create table Employ
(Id int,Name Varchar(255),age int,gender varchar(255),salary int,department varchar(255),City varchar(255))

select * from Employ

insert into Employ values(1, 'Amit', 23, 'Male', 25000, 'IT', 'Delhi'),
(2, 'Riya', 30, 'Female', 30000, 'HR', 'Mumbai'),
(3,'Shreya', 40, 'Female', 25000, 'Accounts', 'Pune'),
(4, 'Raj', 33, 'Male', 45000, 'Marketing', 'Surat'),
(5, 'Tanuj', 30, 'Male', 36000, 'IT', 'Chandigarh'),
(6, 'Ashish', 29, 'Male', 45000, 'HR', 'Chennai'),
(7, 'Upasana', 56, 'Female', 90000, 'IT', 'Delhi');
select * from Employ

SELECT Name,
       (SELECT AVG(salary) FROM Employ) AS avg_salary FROM Employ

SELECT name, salary FROM Employ e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employ
    WHERE department = e.department
);
