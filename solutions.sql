
-- TASK1 CREATING DATABASE techmach_db
CREATE DATABASE techmach_db;
-- using techmach_db;
use techmach_db;



-- TASK2 creating table techhyve_employees with employee_id,first_name,last_name,gender,age
create table techhyve_employees
(
employee_id int,
first_name varchar(200),
last_name varchar(200),
gender enum('male','female','others'),
age int
);
-- creating table techcloud_employees with employee_id,first_name,last_name,gender,age
create table techcloud_employees
(
employee_id int,
first_name varchar(200),
last_name varchar(200),
gender enum('male','female','others'),
age int
);
-- creating table techsoft_employees with employee_id,first_name,last_name,gender,age.
create table techsoft_employees
(
employee_id int,
first_name varchar(200),
last_name varchar(200),
gender enum('male','female','others'),
age int
);


#TASK3
-- adding column proficiencylevel in techcloud_employees table
alter table techcloud_employees add column proficiencyLevel int ;

-- adding column proficiencylevel in techhyve_employees table
alter table techhyve_employees add column proficiencyLevel int ;

-- adding column proficiencylevel in techsoft_employees table
alter table techsoft_employees add column proficiencyLevel int ;



#TASK4
-- addding primary key in employee_id in techcloud_employees table
alter table techcloud_employees add primary key (employee_id);

-- addding primary key in employee_id in techchyve_employees table
alter table techhyve_employees add primary key (employee_id);

-- addding primary key in employee_id in techsoft_employees table
alter table techsoft_employees add primary key (employee_id);



 
-- adding constraint and setting the proficiencylevel between 1 to 5 in techcloud_employees table
ALTER TABLE techcloud_employees modify proficiencyLevel int check (proficiencyLevel between 1 and 5);

-- adding constraint and setting the proficiencylevel between 1 to 5 in techhyve_employees table
ALTER TABLE techhyve_employees modify proficiencyLevel int check (proficiencyLevel between 1 and 5);


-- adding constraint and setting the proficiencylevel between 1 to 5 in techsoft_employees table
ALTER TABLE techsoft_employees modify proficiencyLevel int check (proficiencyLevel between 1 and 5);




-- altering proficiencyLevel and setting default valuse as in techcloud_employees table
ALTER table techcloud_employees
ALTER proficiencyLevel SET DEFAULT 1;

-- altering proficiencyLevel and setting default valuse as in techhyve_employees table
ALTER table techhyve_employees
ALTER proficiencyLevel SET DEFAULT 1;

-- altering proficiencyLevel and setting default value as '1' in techsoft_employees table
ALTER table techsoft_employees
ALTER proficiencyLevel SET DEFAULT 1;




-- modifying the age column and setting the value between 21 and 55 in techcloud_employees table
ALTER TABLE techcloud_employees modify age int check (age between 21 and 55);

-- modifying the age column and setting the value between 21 and 55 in techhyve_employees table
ALTER TABLE techhyve_employees modify age int check (age between 21 and 55);

-- modifying the age column and setting the value between 21 and 55 in techsoft_employees table
ALTER TABLE techsoft_employees modify age int check (age between 21 and 55);
alter table techsoft_employees modify column employee_id varchar(200);




truncate table techsoft_employees



-- insering data into techhyve_employees table
insert into techhyve_employees (employee_id,first_name,last_name,gender,age,proficiencyLevel) values
(0001,'Eli','Evans','Male',26,1),
(0002,'Carlos','Simmons','Male',32,	2),
(0003,'Kathie','Bryant','Female',25,1),
(0004,'Joey','Hughes','Male',41,4),
(0005,'Alice','Matthews','Female',52,4);

-- insering data into techcloud_employees table
insert into techcloud_employees (employee_id,first_name,last_name,gender,age,proficiencyLevel) values
(0001,'Teresa','Bryant','Female',39,2),
(0002,'Alexis','Patterson','Male',48,5),
(0003,'	Rose','	Bell','Female',42,3),
(0004,'Gemma','Watkins','Female',44,3),
(0005,'Kingston','Martinez','Male',29,2);

-- insering data into techsoft_employees table
insert into techsoft_employees (employee_id,first_name,last_name,gender,age,proficiencyLevel) values
(0001,'Peter','Burtler','Male',44,4),
(0002,'Harold','Simmons','Male',54,4),
(0003,'Juliana','Sanders','Female',	36,2),
(0004,'	Paul','	Ward','Male',29,2),
(0005,'	Nicole','Bryant','Female',30,2);



-- creating the copy of techcloud_employees and named as techcloud_employees_bkp select table
CREATE TABLE techcloud_employees_bkp select * from techcloud_employees;

-- creating the copy of techyve_employees and named as techhyve_employees_bkp select table
CREATE TABLE techhyve_employees_bkp select * from techhyve_employees;

-- creating the copy of techsoft_employees and named as techsoft_employees_bkp select table
CREATE TABLE techsoft_employees_bkp select * from techsoft_employees;




-- Deleting the records of employee from techcloud_employees
 DELETE FROM techcloud_employees WHERE employee_id = '0001';
DELETE FROM techcloud_employees WHERE employee_id IN ("0004");

 -- Deleting the records of employee from techhyve_employees
  DELETE FROM techhyve_employees WHERE employee_id ='0003' or employee_id ='0005'
  
  
  

-- Merging the records from techhyve_employees and techcloud_employees and creating a new table called techhyvecloud_employees
CREATE TABLE techhyvecloud_employees like techhyve_employees;
INSERT INTO techhyvecloud_employees
SELECT * FROM techcloud_employees 
UNION
SELECT * FROM techhyve_employees;

-- truncatiing the techhyve_employees table 
TRUNCATE TABLE techhyve_employees;

-- truncating the techcloud_employees table.
TRUNCATE TABLE techcloud_employees;
