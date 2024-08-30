create database learning_sql
use learning_sql
CREATE TABLE STUDENT1 (
    stdid INT,
    stdname VARCHAR(20),
    dob DATE,
    doj DATE,
    fee INT,
    gender CHAR
);

INSERT INTO STUDENT1
VALUES 
(1, 'John Doe', '2000-05-15', '2022-03-01', 5000, 'M'),
(2, 'Jane Smith', '2001-08-20', '2022-03-01', 5500, 'F'),
(3, 'Michael Johnson', '1999-12-10', '2022-03-02', 4800, 'M'),
(4, 'Emily Davis', '2002-04-25', '2022-03-02', 5200, 'F'),
(5, 'David Lee', '2003-07-12', '2022-03-03', 4900, 'M'),
(6, 'Sarah Brown', '2000-09-30', '2022-03-03', 5100, 'F'),
(7, 'Alex Wilson', '2004-02-18', '2022-03-04', 4800, 'M'),
(8, 'Olivia Taylor', '2001-11-05', '2022-03-04', 5300, 'F');

select * from STUDENT1
drop table STUDENT1




CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department, Salary) VALUES
(1, 'John', 'Doe', 30, 'IT', 60000.00),
(2, 'Jane', 'Smith', 25, 'HR', 50000.00),
(3, 'Peter', 'Johnson', 40, 'Finance', 80000.00),
(4, 'Emily', 'Davis', 35, 'IT', 70000.00),
(5, 'Michael', 'Brown', 50, 'Management', 90000.00);

SELECT * FROM Employees

SELECT * FROM Employees WHERE Department = 'IT';
SELECT * FROM Employees WHERE Department <> 'HR';
SELECT * FROM Employees WHERE Age > 30;
SELECT * FROM Employees WHERE Salary < 70000.00;
SELECT * FROM Employees WHERE Age >= 35;
SELECT * FROM Employees WHERE Salary <= 60000.00;
SELECT * FROM Employees WHERE Department = 'IT' AND Salary > 60000;
SELECT * FROM Employees WHERE Department = 'IT' OR Department = 'HR';
SELECT * FROM Employees WHERE Age BETWEEN 30 AND 40;
SELECT * FROM Employees WHERE Department IN ('IT', 'HR', 'Finance');
SELECT * FROM Employees WHERE FirstName LIKE 'J%';
SELECT * FROM Employees 
WHERE Department = 'IT' AND Salary BETWEEN 60000 AND 80000 AND FirstName LIKE 'E%';

--notnull
 create table t( slno int, name varchar(50) not null)
 insert into t values(1,'vis')
 select * from t
 insert into t(slno) values(2)

 --unique
create table t1( slno int, name varchar(50) not null, phno bigint unique)
insert into t1 values(1,'vis',1234567890)
select * from t1
insert into t1 values(2,'vis',1234567890)

--primarykey
create table t2( slno int primary key, name varchar(50) not null, phno bigint unique)
insert into t2 values(1,'vis',1234567890)
insert into t2 values(1,'vid',1234567800)
insert into t2 values(2,'visd',1234567800)
drop table t2
select * from t2

--foregin key
create table t3( slno int references t2(slno), sal int)
--create table t3(slno int, sal int, foregin key (slno) references t2(slno
insert into t3 values(1,12345)
select * from t3

--default
create table t4( slno int, name varchar(50) not null,qualification varchar(50) default 'Btech')
insert into t4 values(1,'vis','mtech')
select * from t4
insert into t4 values(1,'vis',default)
insert into t4(slno,name) values(12,'asd')

--check
create table t5( slno int, name varchar(50) not null,age int check(age>=20))
insert into  t5 values ( 1,'asd', 20)
insert into  t5 values ( 2,'aqwsd', 19)
select * from t5


CREATE TABLE studentdetails (
    studid INT PRIMARY KEY,
    studentname VARCHAR(100),
    studentage INT,
    studentqualification VARCHAR(50)
);

INSERT INTO studentdetails (studid, studentname, studentage, studentqualification) VALUES
(101, 'John Doe', 20, 'BSc'),
(102, 'Jane Smith', 22, 'MSc'),
(103, 'Michael Johnson', 21, 'BSc'),
(104, 'Emily Davis', 23, 'PhD'),
(105, 'David Lee', 19, 'BSc'),
(106, 'Sarah Brown', 24, 'MBA');

SELECT * FROM studentdetails;
 SELECT AVG(studentage) AS average FROM studentdetails;--21
SELECT SUM(studentage) AS sum FROM studentdetails;--129
SELECT MAX(studentage) AS maximum FROM studentdetails;--24
SELECT MIN(studentage) AS minimum FROM studentdetails;--19
SELECT COUNT(studentage) AS countage FROM studentdetails;--6
SELECT UPPER(studentname) AS studentname FROM studentdetails;
SELECT LOWER(studentname) AS studentname FROM studentdetails;
SELECT GETDATE() AS systemcurrentdate;
SELECT LEN(studentname) AS length FROM studentdetails;
SELECT SUBSTRING(studentname, 1, 3) AS substring_studentname FROM studentdetails;--1 to 3
SELECT LEFT(studentname, 4) AS left_studentname FROM studentdetails;--upto 4 from left
SELECT RIGHT(studentname, 2) AS right_studentname FROM studentdetails;--upto  from right
SELECT CONCAT(studentname, ' ', studentqualification) AS concatenated_column FROM studentdetails;


ALTER TABLE studentdetails ADD studentmark FLOAT;
UPDATE studentdetails SET studentmark = 423.4445 WHERE studid = 101;
UPDATE studentdetails SET studentmark = 427.3424434 WHERE studid = 102;
UPDATE studentdetails SET studentmark = 429.246522 WHERE studid = 103;
UPDATE studentdetails SET studentmark = 424.114342 WHERE studid = 104;
UPDATE studentdetails SET studentmark = 432.4445 WHERE studid = 105;
UPDATE studentdetails SET studentmark = 423.4445 WHERE studid = 106;

select * from studentdetails
SELECT ROUND(studentmark, 3) AS placevalue FROM studentdetails;



create table rooms(roomid int primary key,available bit default 1,roomtype varchar(50) check(roomtype='double' or roomtype='single'or roomtype='delux'),dailyrent int default 1000)
select * from rooms
insert into rooms values(100,default,'single',default)
insert into rooms values(101,1,'double',default)
insert into rooms values(102,1,'delux',default)
insert into rooms values(103,default,'single',default)
select * from rooms


create table bookingdetails(Bookingid int primary key,roomid int references rooms(roomid),customername varchar(50) not null,fromdate datetime default getdate(),todate datetime not null,phoneno bigint unique check(len(phoneno)=10))

 insert into bookingdetails values(001,100,'appu',default,'2024-12-05',8763451347)
 select * from bookingdetails
  insert into bookingdetails values(002,101,'ajay',default,'05-12-2024',8763451349)


create table studentss(stid int,studentname varchar(50),studentage int)
insert into studentss values(101,'arya',23),(102,'ajay',22),(103,'amal',23),(104,'appu',24),(105,'unni',22)
select * from studentss

create table students1(std int,studentqualification varchar(50))
insert into students1 values(101,'mca'),(102,'bca'),(103,'mtech'),(104,'btech'),(106,'mtech'),(110,'btech'),(108,'mca'),(109,'mtech')
select * from students1

---inner join
select studentss.stid,students1.studentqualification from studentss inner join  students1 on studentss.stid=students1.std 
--to display desc order
select studentss.stid,students1.studentqualification from studentss inner join  students1 on studentss.stid=students1.std  order by studentss.stid desc

---left join   
select studentss.stid,students1.studentqualification from studentss left join  students1 on studentss.stid=students1.std 

----right join
select studentss.stid,students1.studentqualification from studentss right join  students1 on studentss.stid=students1.std

---full join
select studentss.stid,students1.studentqualification from studentss full join  students1 on studentss.stid=students1.std 



select * from studentdetails
-- create procedure
 create procedure pn
 as
 begin
 select * from studentdetails
 select * from studentdetails where studentqualification='Bsc'
 select * from studentdetails where studentname like '___E%'
 end 
 go
 exec pn
 DROP PROCEDURE pn

 create procedure pn1
 @studentqualification varchar(60),
 @studentage int 
 as
 begin
 select * from studentdetails where studentqualification=@studentqualification
 select * from studentdetails where studentname like '%a%'
  select * from studentdetails where studentage=@studentage
 end 
 go
  exec pn1 @studentqualification='PhD',@studentage=22



  --GROUPBY
  create table customers(customerid int,customername varchar(50),city varchar(30),country varchar(30))
insert into customers values
		(01,'appu','chennai','india'),
		(02,'ajay','kolkata','india'),
		(03,'ammu','paris','france'),
		(04,'arun','delhi','india'),
		(05,'akhil','lyon','france'),
		(06,'amal','newyork','usa'),
		(07,'anu','chicago','usa')
drop table customers
select * from customers
select country,count(customername)as countrywith2customer from customers group by country having count(country)>=2



--view

select * from studentdetails

create view studentview
as 
select studentqualification from studentdetails where studentqualification='Bsc' 

drop view studentview
select * from studentview





create table student110(slno int,name varchar(30),phone bigint,age int,qualification varchar(30))
select * from student110
insert into student110 values
(1,'ajay',8761235478,24,'mtech'),
(2,'ammu',7864531237,25,'mtech'),
(3,'anu',6542354879,22,'bca'),
(4,'ajmal',786432145,25,'mca')




--unique
alter table student110 add constraint uq_student_slno unique (slno)
--not null
alter table student110 alter column age int not null
--default 
alter table student110 add constraint default_cons_on_qualification default'mca' for qualification
---check
alter table student110 add constraint age_of_cons_check check(age>21)
----should add min age to check



---forign 

ALTER TABLE student110 
ADD FOREIGN KEY (column_name) REFERENCES other_table(column_name);

alter table student110 
add foreign key (slno) references student110(slno)  -- Example of self-reference




---primary key
--option1
alter table student110 alter column slno int not null
alter table student110 add constraint primarykeyofslno primary key(slno)
----option 2
alter table student110 add primary key(slno)


---drop constraints
alter table student110 drop constraint  primarykeyofslno