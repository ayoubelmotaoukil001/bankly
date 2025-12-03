INSERT INTO customers (full_name, email, phone, rege_date)
VALUES
('Ayoub', 'ayoub1@gmail.com', 0612345671, '2024-12-01'),
('Ahmed', 'ahmed1@gmail.com', 0612345672, '2024-12-02'),
('Sara', 'sara@gmail.com', 0612345673, '2024-12-03'),
('Nour', 'nour@gmail.com', 0612345674, '2024-12-04');

INSERT INTO advisors (full_name, email)
VALUES
('Ayoub', 'ayoub@bankly.com'),
('Ahmed', 'ahmed@bankly.com'),
('Sara', 'sara@bankly.com'),
('Nour', 'nour@bankly.com');

INSERT INTO account (acc_num, balance, acc_type, customer_id, advisors_id)
VALUES
(1001, 5000, 'Checking', 1, 1),
(1002, 12000, 'Savings', 2, 2),
(1003, 3000, 'Business', 3, 3),
(1004, 7500, 'Checking', 4, 4);

INSERT INTO transac (amount, tran_type, tran_date, account_id)
VALUES
(250.75, 'debit', '2024-12-01 10:30:00', 1),
(1000.00, 'credit', '2024-12-02 14:20:00', 2),
(500.00, 'debit', '2024-12-03 09:15:00', 3),
(2200.50, 'credit', '2024-12-04 16:40:00', 4);

/* 1insere un noveau client */

INSERT INTO customers (full_name, email, phone, rege_date)
VALUES ('Youssef', 'youssef@gmail.com', 0612345675, '2024-12-05');

/* 2 update le numero de telephone*/

 update customers
 set phone  = 0700000000
where customer_id =1 ;


/*3 afficher tous les customers*/
select *from customers ;

/* 4 afficher uniquement les full_name et email des customers */
SELECT full_name, email FROM customers;

/*5 afficher tous les accounts  */
SELECT * FROM account;

/* 6 afficher uniquement les account_number*/

select acc_num from account  ;


/* 7 afficher toutes les transactions*/
 select *from transac ;

 /* 8 afficher les accounts avec un balance ≤ 0 */
 select *FROM account 
 where balance > 10000 ;

 /* 9 afficher les accounts avec un balance ≤ 0 */
 select *FROM account
 where balance <= 0 ;


 /* 10 afficher les transactions de type "debit*/
select *from transac 
where tran_type = "debit" ;

/* 11 afficher les transactions de type "credit*/
select *from transac 
where tran_type = "credit" ;

/*12 afficher les transactions du account_id = 1 */
select *from transac 
where account_id = 1 ;


/*13 afficher les customers ayant un account géré par l’advisor_id = 2 */
SELECT customers.*
FROM customers
JOIN account ON customers.customer_id = account.customer_id
WHERE account.advisors_id = 2;


/* 14  afficher les accounts ayant account_type=""saving" */
select *from account
where acc_type ="Savings" ;


/*15afficher les transactions avec un amount ≥ 500 */
SELECT * FROM transac
WHERE amount >= 500;

/*16  afficher les transactions avec un amount entre 100 et 1000*/
select *from transac
where amount >=100 and amount <=1000 ;


/*17 afficher les accounts du customer_id = 1*/
select *from account
where customer_id = 1 ;



/*18 afficher les accounts triés par balance (ordre croissant) */
SELECT * FROM account
ORDER BY balance ;

/*19 afficher les transactions triées par amount (ordre décroissant)*/
SELECT * FROM transac
ORDER BY amount desc ;

/*20 afficher les 5 plus grandes transactions*/
SELECT * FROM transac
ORDER BY amount DESC
LIMIT 5;

/* 21 afficher toutes les transactions triées par transaction_date décroissante*/
select *from  transac 
order by tran_date desc


/* 22 Afficher les 3 dernières transactions */
select *from  transac 
order by tran_date desc
LIMIT 3; 

/*23 afficher chaque account avec le nom du customer et le nom de l’advisor (JOIN)*/
SELECT account.account_id, account.acc_num, account.balance, account.acc_type,
       customers.full_name AS customer_name,
       advisors.full_name AS advisor_name
FROM account
JOIN customers ON account.customer_id = customers.customer_id
JOIN advisors ON account.advisors_id = advisors.advisors_id;






