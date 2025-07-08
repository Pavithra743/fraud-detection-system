INSERT INTO users (user_id, name, email, phone, registration_date) VALUES
(1, 'Neha', 'neha@gmail.com', '9876543210', '2022-01-01'),
(2, 'Ravi', 'ravi@gmail.com', '9876501234', '2022-02-01'),
(3, 'Amit', 'amit123@gmail.com', '9876000001', '2022-03-15'),
(4, 'Sara', 'sara.k@outlook.com', '9876000002', '2023-05-10'),
(5, 'Zoya', 'zoya92@yahoo.com', '9876000003', '2023-11-25'),
(6, 'Manoj', 'manoj.p@gmail.com', '9876000004', '2024-01-30'),
(7, 'Priya', 'priya123@gmail.com', '9876000005', '2022-07-19');

INSERT INTO transactions (transaction_id, user_id, amount, location, transaction_time, status) VALUES
(1001, 1, 20000, 'Delhi', '2025-04-01 09:00:00', 'Valid'),
(1002, 2, 75000, 'Russia', '2025-04-01 09:10:00', 'Fraud'),
(1003, 3, 9800, 'Mumbai', '2025-04-01 10:00:00', 'Valid'),
(1004, 3, 150000, 'Russia', '2025-04-01 10:05:00', 'Fraud'),
(1005, 4, 800, 'Chennai', '2025-04-01 01:30:00', 'Fraud'),
(1006, 4, 2200, 'Chennai', '2025-04-01 15:45:00', 'Valid'),
(1007, 5, 60000, 'North Korea', '2025-04-01 13:00:00', 'Fraud'),
(1008, 6, 45000, 'Delhi', '2025-04-01 05:15:00', 'Fraud'),
(1009, 6, 3000, 'Delhi', '2025-04-01 11:30:00', 'Valid'),
(1010, 7, 51000, 'Bangalore', '2025-04-01 14:00:00', 'Fraud'),
(1011, 7, 1000, 'Bangalore', '2025-04-01 14:10:00', 'Valid'),
(1012, 1, 11000, 'Dubai', '2025-04-01 22:30:00', 'Fraud');

INSERT INTO fraud_alerts (alert_id, transaction_id, reason, alert_time) VALUES
(1, 1002, 'Unusual location', '2025-04-01 09:15:00'),
(2, 1004, 'High amount in blacklisted region', '2025-04-01 10:06:00'),
(3, 1005, 'Unusual transaction time (early morning)', '2025-04-01 01:35:00'),
(4, 1007, 'Transaction from blacklisted region', '2025-04-01 13:05:00'),
(5, 1008, 'Night-time high value transaction', '2025-04-01 05:20:00'),
(6, 1010, 'Amount exceeds threshold', '2025-04-01 14:01:00'),
(7, 1012, 'Foreign location and late-night transaction', '2025-04-01 22:35:00');