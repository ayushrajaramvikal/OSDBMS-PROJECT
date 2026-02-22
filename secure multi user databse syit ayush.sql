create database secureDb;
use secureDb;
CREATE table Employees (
emp_id int primary KEY,
emp_name varchar(50),
department varchar(50),
salary decimal(10,2)
);
insert into Employees values
(1,'amit', 'HR', 30000),
(2,'riya', 'IT', 45000),
(3,'karan', 'finance', 50000),

CREATE USER 'manager'@'localhost'IDENTIFIED BY 'manager123';
CREATE USER 'CLERK'@'localhost'IDENTIFIED BY 'clerk123';
CREATE USER 'auditor'@'localhost'IDENTIFIED BY 'auditot=r123';

grant all privileges on secureDb.* to 'manager'@'localhost';
grant select, insert on secureDb.employees to 'clerk'@'localhost';
grant select on secureDb.employees to 'auditor'@'localhost';

flush privileges;

revoke insert on secureDb.Employees from 'clerk'@'localhost';
revoke all privileges on  secureDb.employees from 'auditor'@'localhost';

show grants for 'manager'@'localhost';
show grants for 'clerk'@'localhost';
show grants for 'auditor'@'localhost';
