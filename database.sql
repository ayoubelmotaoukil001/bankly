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
create table account 
 (
    account_id int primary key  AUTO_INCREMENT ,
    acc_num  int,
    balance int  ,
    acc_type enum('Checking','Savings','Business') ,
    customer_id int ,
    advisors_id int ,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (advisors_id) REFERENCES advisors(advisors_id)
 );
 create table transac
(
    tran_id int primary key AUTO_INCREMENT  ,
    amount decimal(12,2) ,
    tran_type enum('debit','credit') ,
    tran_date datetime ,
    account_id int ,
    FOREIGN KEY (account_id) REFERENCES account(account_id)
) ;

