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