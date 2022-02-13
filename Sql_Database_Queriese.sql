create database HR_Test
use HR_Test

create table Employee_Record(Emp_Code varchar(20) not null unique , Name char(40) not null , Department varchar(20) not null
, Gender char(10) , DOB Date not null , Joining_Date Date not null , Pre_Experience int not null,
 Salary int not null , Address varchar(50) not null , Primary key(Emp_Code)  );

insert into Employee_Record values('@Dev2022' , 'Aniket Bhave' ,'HR' ,
 'Male' , '06/22/1997' , '10/11/2020' , 0 , 14000 , 'Ghatkopar' );

 insert into Employee_Record values('@HR202012' , 'Sagar Chavan' , 'Developer' 
 , 'Male' , '11/20/1995' , '10/06/2018' , 6 , 25000 , 'Saki Naka') ,
  ('@Adm2020110' , 'Nikita Bakade' , 'Admin' , 'Female' , '04/06/1999' , '04/10/2020' , 1 , 15000 , 'Khandeshwar');

  select *  from Employee_Record;

