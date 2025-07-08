CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    registration_date DATE
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT,
    amount FLOAT,
    location VARCHAR(100),
    transaction_time TIMESTAMP,
    status VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE fraud_alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_id INT,
    reason TEXT,
    alert_time TIMESTAMP,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);
