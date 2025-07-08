DELIMITER //
CREATE PROCEDURE generate_fraud_report()
BEGIN
  SELECT t.transaction_id, t.user_id, t.amount, t.location, f.reason, f.alert_time
  FROM transactions t
  JOIN fraud_alerts f ON t.transaction_id = f.transaction_id;
END;//

CREATE PROCEDURE get_flagged_transactions()
BEGIN
  SELECT * FROM transactions
  WHERE status = 'Fraud';
END;//

CREATE PROCEDURE analyze_user_transactions(IN uid INT)
BEGIN
  SELECT * FROM transactions
  WHERE user_id = uid
  ORDER BY transaction_time DESC;
END;//
DELIMITER ;