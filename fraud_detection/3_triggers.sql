DELIMITER //
CREATE TRIGGER high_amount_alert
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
  IF NEW.amount > 50000 THEN
    INSERT INTO fraud_alerts (transaction_id, reason, alert_time)
    VALUES (NEW.transaction_id, 'Amount exceeds threshold', NOW());
  END IF;
END;//
DELIMITER ;

DELIMITER //
CREATE TRIGGER night_time_alert
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
  IF HOUR(NEW.transaction_time) < 6 THEN
    INSERT INTO fraud_alerts (transaction_id, reason, alert_time)
    VALUES (NEW.transaction_id, 'Unusual transaction time (night)', NOW());
  END IF;
END;//
DELIMITER ;

DELIMITER //
CREATE TRIGGER blacklisted_location_alert
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
  IF NEW.location IN ('Russia', 'North Korea') THEN
    INSERT INTO fraud_alerts (transaction_id, reason, alert_time)
    VALUES (NEW.transaction_id, 'Blacklisted location', NOW());
  END IF;
END;//
DELIMITER ;