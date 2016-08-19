CREATE TABLE journey
  SELECT x.customer_id, x.type_id
  FROM (
    SELECT customer_id, type_id, logged
    FROM event_log
    WHERE customer_id IS NOT NULL
    AND type_id != 0)x
  ORDER BY x.customer_id, x.logged;
