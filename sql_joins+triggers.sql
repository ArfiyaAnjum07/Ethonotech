CREATE TABLE trans (
    t_id INT PRIMARY KEY,
    t_amount INT,
    c_id INT NOT NULL
);
INSERT INTO trans VALUES
(1, 10000, 101),
(2, 25000, 102),
(3, 41000, 103),
(4, 12000, 104),
(5, 30000, 105);
ALTER TABLE trans
ADD UNIQUE(c_id);
CREATE TABLE cust (
    T_id INT PRIMARY KEY,
    name VARCHAR(20),
    t_amount INT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES trans(c_id)
);
INSERT INTO cust VALUES
(1, 'Asha', 15000, 101),
(2, 'Rohit', 22000, 102),
(3, 'Priya', 18000, 103),
(4, 'Vikram', 25000, 104),
(5, 'Neha', 30000, 105);
SELECT * FROM trans;
SELECT * FROM cust;
SELECT
    cust.customer_id,
    cust.name,
    cust.t_amount
FROM cust
INNER JOIN trans
ON cust.customer_id = trans.c_id;
SELECT
    cust.customer_id,
    cust.name,
    cust.t_amount
FROM cust
LEFT JOIN trans
ON cust.customer_id = trans.c_id;
SELECT
    trans.c_id,
    cust.name,
    trans.t_amount
FROM trans
RIGHT JOIN cust
ON trans.c_id = cust.customer_id;
SELECT
    cust.customer_id,
    cust.name,
    cust.t_amount
FROM cust
LEFT JOIN trans
ON cust.customer_id = trans.c_id

UNION

SELECT
    trans.c_id,
    cust.name,
    trans.t_amounts
FROM trans
RIGHT JOIN cust
ON trans.c_id = cust.customer_id;
CREATE VIEW customer_transaction_view AS
SELECT
    cust.customer_id,
    cust.name,
    cust.t_amount AS customer_amount,
    trans.t_amount AS transaction_amount
FROM cust
INNER JOIN trans
ON cust.customer_id = trans.c_id;
SELECT * FROM customer_transaction_view;
SHOW FULL TABLES
WHERE Table_type = 'VIEW';
SHOW CREATE VIEW customer_transaction_view;
CREATE VIEW customer_trans_view AS
SELECT
    c.customer_id,
    c.name,
    t.t_id,
    t.t_amount
FROM cust c
INNER JOIN trans t
ON c.customer_id = t.c_id;
SELECT * FROM customer_trans_view;
DELIMITER //

CREATE PROCEDURE get_customer_transactions()
BEGIN
    SELECT
        c.customer_id,
        c.name,
        t.t_id,
        t.t_amount
    FROM cust c
    INNER JOIN trans t
    ON c.customer_id = t.c_id;
END //

DELIMITER ;
CALL get_customer_transactions();
SHOW PROCEDURE STATUS
WHERE Db = DATABASE();
DROP PROCEDURE get_customer_transactions;
DELIMITER //

CREATE PROCEDURE get_customer_transactions()
BEGIN
    SELECT
        c.customer_id,
        c.name,
        t.t_id,
        t.t_amount
    FROM cust c
    INNER JOIN trans t
    ON c.customer_id = t.c_id;
END //

DELIMITER ;
CALL get_customer_transactions();
