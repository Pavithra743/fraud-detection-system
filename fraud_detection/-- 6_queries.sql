-- Users with more than one fraud alert
SELECT u.user_id, u.name, COUNT(*) AS alert_count
FROM users u
JOIN transactions t ON u.user_id = t.user_id
JOIN fraud_alerts f ON t.transaction_id = f.transaction_id
GROUP BY u.user_id
HAVING alert_count > 1;

-- Latest flagged transaction per user
SELECT user_id, MAX(transaction_time) AS latest_fraud
FROM transactions
WHERE status = 'Fraud'
GROUP BY user_id;

-- Location-wise fraud analysis
SELECT location, COUNT(*) AS fraud_cases
FROM transactions
WHERE status = 'Fraud'
GROUP BY location;
