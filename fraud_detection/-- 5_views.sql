CREATE VIEW fraud_transactions_view AS
SELECT * FROM transactions WHERE status = 'Fraud';

CREATE VIEW high_value_view AS
SELECT * FROM transactions WHERE amount > 50000;

CREATE VIEW daily_fraud_summary AS
SELECT DATE(alert_time) AS alert_date, COUNT(*) AS total_alerts
FROM fraud_alerts
GROUP BY alert_date;