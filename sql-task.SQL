CREATE Database training;
USE training;
-- 1. Create the User table first (the parent table)
CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email_id VARCHAR(100),
    password VARCHAR(50),
    otp INT
);

-- 2. Create order_table (references User)
CREATE TABLE order_table (
    id INT PRIMARY KEY,
    user_id INT,
    category VARCHAR(100),
    product_name VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- 3. Create payment (references both User and order_table)
CREATE TABLE payment (
    id INT PRIMARY KEY,
    order_id INT,
    user_id INT,
    amount INT,
    txn_number INT,
    FOREIGN KEY (order_id) REFERENCES order_table(id),
    FOREIGN KEY (user_id) REFERENCES User(id)
);
/* perform inserting in tables 

INSERT INTO User (id, name, email_id, password, otp) 
VALUES 
    (1, 'Vishal', 'vishalkonh@gmail.com', 'pass@123', 1234),
    (2, 'Rana', 'ranakonh@gmail.com', 'rass@123', 2134),
    (3, 'Hani', 'hanikonh@gmail.com', 'hass@123', 3134),
    (4, 'Bilal', 'bilalkonh@gmail.com', 'bass@123', 1734),
    (5, 'Rohit', 'rohtikonh@gmail.com', 'rass@123', 4234);
INSERT INTO order_table (id, user_id, category, product_name)
VALUES 
    (101, 1, 'Electronics', 'Laptop'),
    (102, 2, 'Books', 'SQL Guide'),
    (103, 3, 'Fashion', 'Sneakers'),
    (104, 4, 'Home', 'Coffee Maker'),
    (105, 5, 'Electronics', 'Smartphone');
INSERT INTO payment (id, order_id, user_id, amount, txn_number)
VALUES 
    (501, 101, 1, 55000, 99881),
    (502, 102, 2, 1200, 99882),
    (503, 103, 3, 4500, 99883),
    (504, 104, 4, 3000, 99884),
    (505, 105, 5, 25000, 99885);
/* applying select command  to read the database */
SELECT * FROM User;
SELECT * FROM order_table;
SELECT * FROM payment;
/* perform update on DB 

/*perform delete on DB 
