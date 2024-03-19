--1. system database

/*
master | model | msdb | tempdb
2. user defined database
*/

min,count --  System defined function
table -- system defined keywords

-- tableNAme -- user defined

-- its not case sensitive
/*
Data Definition Language (DDL):
•	Create: Used to create new database objects such as tables, indexes, or views.
•	Alter: Modifies the structure of existing database objects, such as adding or deleting columns in a table.
•	Drop: Removes an existing database object, such as a table or an index.
•	Truncate: Removes all records from a table, but retains the structure for future use.
*/
CREATE DATABASE TREENETRA_BATCH_9

CREATE DATABASE "TREENETRA BATCH 9"

CREATE DATABASE TeenetraBatch9 | EmpDetail | StudentDetails

USE TREENETRA_BATCH_9
 
CREATE TABLE TREENETRA_STUDENT()

select getdate()

-- Data Type : its a type of data that define the type of data that a column can store.
-- 1. numberic - ID| UAN |Bank account number | pincode |contact | price | aadhar card number | avg | float | km
-- 2. String - fullname | name
-- 3. datatime - date | time 

-- Int - (integer) - range -2,147,483,648 to 2,147,483,647

declare @var Int
set @var = 2147483647
print(@var)


varchar(variable-length character)

declare @var1 varchar(100)
set @var1 = 'treenetra'
print(@var1)

datetime - jan 1 1753 to dec 31,9999

declare @var2 datetime
set @var2 = '2024-01-25T21:07:29.38'
print(@var2)

CREATE TABLE TREENETRA_STUDENT(
student_id int,
first_name varchar(50),
last_name varchar(50),
dateofjoining date
)
select * from TREENETRA_STUDENT

-- create a table using this 3 datatypes

-- Data Types

bit --it store value 0 or 1.

declare @var3 bit
set @var3 = 0
print(@var3)

declare @var4 tinyint  --0 to 255
set @var4 = 256
print(@var4)

declare @var5 smallint -- it will store value ranging -32768 to 32768
set @var5 = -32766
print(@var5)

declare @var6 decimal -- an exact fixed point number.
set @var6 = 200.69
print(@var6)

 --char
 declare @char char(8000) -- _ _ _ _ _ _ _ _ _ _
 -- 2 byte
 set @char = 'abcdef'
 print(@char)
 print(len(@char))
 print(datalength(@char))

 --varchar
 declare @varchar varchar(8000) -- _ _ _ _ _ _ _ _ _ _
 set @varchar = 'abc'
 print(@varchar)
 print(len(@varchar))
  print(datalength(@varchar))


declare @char1 nchar(4000) -- _ _ _ _ _ _ _ _ _ _
 -- 2 byte
 set @char1 = 'abcdef'
 print(@char1)
 print(len(@char1))
 print(datalength(@char1))

  declare @varchar1 nvarchar(4000) -- _ _ _ _ _ _ _ _ _ _
 set @varchar1 = 'abc'
 print(@varchar1)
 print(len(@varchar1))
  print(datalength(@varchar1))

declare @money money
set @money = 30000
print(@money)

declare @contact bigint -- range - 9223372036854775808 to 9223372036854775808
set @contact = 9644706155
print(@contact)

example - contact no | roll_no | aadhar number | account no



•	Create: Used to create new database objects such as tables, indexes, or views.
•	Alter: Modifies the structure of existing database objects, such as adding or deleting columns in a table.
•	Drop: Removes an existing database object, such as a table or an index.
•	Truncate: Removes all records from a table, but retains the structure for future use.

select * from [dbo].[TREENETRA_STUDENT]

sp_help TREENETRA_STUDENT -- store procedure
sp_help "[dbo].[TREENETRA_STUDENT]"

Alter statement in SQL Server: it will perfrom 4 operation 
-- if we want to do any modification.
--1. How to change data type & also size of the datatype.
-- Changing Data Type and Size:To change the data type and size of a column, you can use the ALTER TABLE...ALTER COLUMN syntax.
ex - AT-01 | AT-02 |
ALTER TABLE TREENETRA_STUDENT ALTER COLUMN STUDENT_ID VARCHAR(50) 


--2. How to add a new column to the table.
-- Adding a New Column: To add a new column to a table, use the ALTER TABLE...ADD syntax.

ALTER TABLE TREENETRA_STUDENT ADD COURSE VARCHAR(50)
ALTER TABLE TREENETRA_STUDENT ADD Gmail VARCHAR(50)

select * from TREENETRA_STUDENT
sp_help TREENETRA_STUDENT

--3. How to change column name.
-- Changing Column Name:To change the column name, you can use the sp_rename system stored 
-- procedure.

1. CHANGE TABLE NAME  -- 'old table name','new table name'
2. CHANGE COLUMN NAME -- 'old table name.column name ','new column name'

SP_RENAME 'treenetra_student','student_batch_ps_1' -- 'old table name','new table name'

select * from student_batch_ps_1
sp_rename 'student_batch_ps_1.student_id','I'

--4. How to drop the unwanted column from table.
--Dropping an Unwanted Column: To drop (remove) an unwanted column from a table, use the ALTER TABLE...DROP COLUMN syntax.

ALTER TABLE student_batch_ps_1 DROP COLUMN GMAIL

https://www.w3schools.com/sql/sql_datatypes.asp

-- Assignment -26-01-2024

DDL - Create | alter | drop  | truncate
DML - INSERT update delete
DQL - select

--How to import excel sheet in SQL server.
select * from [dbo].[Sheet1$]

sp_rename '[dbo].[Sheet1$]' , 'student_details' -- correct 
sp_rename 'old table name','new table name'
sp_rename 'Sheet1$' , 'SQL_Batch9'
sp_rename 'old table name','new table name'

sp_help student_details

-- SQL introduction
-- Database
-- DBMS
-- RDBMS -- tables (rows and columns)
-- SQL (structured query language) - used to store , manipulate and retrieve data from RDBMS
-- we use SQL for CRUD operation
-- C - Create
-- R - select
-- U - Update
-- D - Delete

-- DQL -- Data query language (select - fetch/read/retrieve/display) 
-- DDL -- Data defination language (Create | Alter | Drop | Truncate)
-- DML -- Data manupulation Language (Insert  | Update | delete)

select * from student_batch_ps_1

--task que
Alter column tablename add columnname datatype
alter table student_batch_ps_1 add age int
ALTER TABLE student_batch_ps_1 ADD age int
ALTER TABLE STUDENT_BATCH_PS_1 ADD AGE INT
ALTER TABLE SUDENT_BATCH_PS_1 ADD COLUMN AGE INT
ALTER TEBLE STUDENT_BATCH_PS_1ADD NEW COLUMN AGE INT
ALTER TABLE student_batch_ps_1 ADD Age int
Alter table student_batch_ps_1 add age int

-- There are 4 clause in SQL SERVER
-- Where clause 
-- Order by 
-- Group by 
-- having

-- Where clause : The where clause is used to filter records.
use TREENETRA_BATCH_9
select * from student_batch_ps_1 where age  29

-- Operators  used in where are:
Comparision operator

 =  : equal
 >  : Greater than
 <  : Less than
 >= : Greater than or equal 
 <= : less than or equal 
 <> or != : Not equal

 -- write a query to add new column fees - 

alter table student_batch_ps_1 add fees money
select * from student_batch_ps_1
select * from student_batch_ps_1 where dateofjoining = '2024-01-24'
select * from student_batch_ps_1 where fees > 5000
select * from student_batch_ps_1 where fees < 5000
select * from student_batch_ps_1 where fees >= 5000
select * from student_batch_ps_1 where fees >= 5000
select * from student_batch_ps_1 where fees != 5000

-- Logical operator :
-- AND | OR | NOT
--where clause can be combined with AND | OR | NOT operator.
-- its used to filter records based on more than one condition
-- AND : its used to display a records if all the condition seprated by AND are True
-- OR : display a record if any of the condition seprated by OR is True.
-- NOT : display a record if the condition is NOT true.

-- AND(multiplication)
0 - False
1 - True

0 0 0  -- age = 65 and fees = 50000
0 1 0  -- age = 65 and fees = 5000
1 0 0  -- age = 23 and fees = 50000
1 1 1  -- age = 26 and fees = 5000
	  -- age = 23 and fees = 5000

select * from student_batch_ps_1 where age = 65 and fees = 50000
select * from student_batch_ps_1 where age = 65 and fees = 5000
select * from student_batch_ps_1 where age = 23 and fees = 50000
select * from student_batch_ps_1 where age = 26 and fees = 5000
select * from student_batch_ps_1 where age = 23 and fees = 5000

--OR operator (Addition)

0 0 0  -- age = 65 OR fees = 50000
0 1 0  -- age = 65 OR fees = 5000
1 0 0  -- age = 23 OR fees = 50000
1 1 1  -- age = 26 OR fees = 5000
	  -- age = 23 OR fees = 5000

select * from student_batch_ps_1 where age = 65 OR fees = 50000
select * from student_batch_ps_1 where age = 65 OR fees = 5000
select * from student_batch_ps_1 where age = 23 OR fees = 50000
select * from student_batch_ps_1 where age = 26 OR fees = 5000
select * from student_batch_ps_1 where age = 23 OR fees = 5000

select ID, Course from student_batch_ps_1

Distinct : removes duplicate rows from query result.

select * from student_batch_ps_1

alter table student_batch_ps_1 add place varchar(50)

select Distinct place from student_batch_ps_1

-- Like operator : is used in a where clause to search for a specified pattern in a column.
-- There are 2 wildcards often used in conjunction with the like operator.

-- Percent (%) - represent zero, one or multiple charater.
-- underscore (_) - represent one , single charater

select * from student_batch_ps_1 where  first_name  like 'p%'
select * from student_batch_ps_1 where  place  like 'Pun%'

select * from student_batch_ps_1 where  first_name  like '%a'
select * from student_batch_ps_1 where  first_name  like '%a%'


select * from student_batch_ps_1 where  first_name  like '__o%'
select * from student_batch_ps_1 where  first_name  like 'p_%'
select * from student_batch_ps_1 where  first_name  like '_o_%'
select * from student_batch_ps_1 where  first_name  like 'p%a'
select * from student_batch_ps_1 where  first_name  like '%a%'

select * from student_batch_ps_1 where  first_name like '[pms]%'
select * from student_batch_ps_1 where  first_name  like '[^pms]%'

-- In operator*** : filter results based on a list of values in the where clause.
select * from student_batch_ps_1 where age in(23,28,29)
select * from student_batch_ps_1 where place  not in('pune')

-- Between  : filter result within a specified range in the where clause.

select * from student_batch_ps_1 where age between 24 and 29
select * from student_batch_ps_1 where fees between 2000 and 3000

-- is null : checks for null values in the where clause.

select * from student_batch_ps_1 where place is null

-- as : rename column or expression in query result

select (ID + ' ' + 'Treenetra_ testing') as "Student ID" from student_batch_ps_1 

select 100 + 200 as AddNumber 


-- order by -- the order by clause allow you to sort the result set of a query based on one or more column.
-- sort data in asc(ascending)and desc (descending)

select first_name,age from student_batch_ps_1 order by first_name,age

-- write a query to increase fees by 1000 in table using operator.

select 'number' as num ,1 + 1000 as display

/*Deepak kumar rout8:27 PM
select *,(fees+1000) 'increment' from student_batch_ps_1
Pranay Panda8:27 PM
select fees + 1000 from student_batch_ps_1
Ramdas Gawade8:27 PM
Select salary +1000 as new salary from tbl name
Niranjan Tripathy8:27 PM
Select fees+1000 'increment' from student_batch_ps_1 ;
santosh mishra8:27 PM
Select*from table name add table table name
BHABANI SANKAR Jena8:28 PM
Select fees fees+1000 "New Fees" from student _batxh_ps_1*/

-- Group by : its used in SQL to group rows from a table based on one or more column.

--- group by clause follows the SELECT stmt and is used to group rows based on specified column.

-- Aggregate function :
 count() , Sum() , avg() , max() , min()

select * from student_batch_ps_1
select count(*) as number_of_rows from student_batch_ps_1
select * from INFORMATION_SCHEMA.columns where table_name = 'student_batch_ps_1'
select count(*) as total_column from INFORMATION_SCHEMA.columns where table_name = 'student_batch_ps_1'

select sum(fees) as sumthecolumn from student_batch_ps_1
select avg(fees) as sumthecolumn from student_batch_ps_1
select max(fees) as sumthecolumn from student_batch_ps_1
select min(fees) as sumthecolumn from student_batch_ps_1
select * from student_batch_ps_1
select place,count(course) from student_batch_ps_1 group by place
select place,sum(fees) from student_batch_ps_1 group by place

-- example select col1,col2,aggregate_function(col1 ) from table_name group by col1,col2
select place,gender,avg(fees) from student_batch_ps_1 group by place,gender

alter table student_batch_ps_1 add gender varchar(10)


Having Clause :is used with group by to filter groups based on aggregate function results.

***
select first_name,last_name,course,age,fees,place,
count(*) from student_batch_ps_1 
group by first_name,last_name,course,age,fees,place
having count(*) >= 1
 ------------------------------------------------------
























































































