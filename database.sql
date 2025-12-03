create database bankly
use bankly 

create table  customers 
(
 customer_id int primary key  AUTO_INCREMENT  ,
 full_name  varchar (250) ,
 email varchar(250) ,
 phone int ,
 rege_date date 
);
create table advisors
(
 advisors_id int primary key AUTO_INCREMENT ,
 full_name varchar(250),
 email varchar(250) 
);
