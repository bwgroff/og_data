SELECT
  s.id, s.created, s.customer_id, s.merchant_id, s.cancelled,
  sio.num_orders, (sio.num_orders = 1) as TOaDS
FROM subscriptions as s
INNER JOIN subsc_item_orders as sio
ON s.id = sio.subscription_id
WHERE s.created >= "2014-01-01 00:00:00"
AND s.created < "2015-01-01 00:00:00"
LIMIT 50;
