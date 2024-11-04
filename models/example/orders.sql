-- models/orders.sql

WITH raw_orders AS (
  SELECT
    order_id,
    customer_id,
    order_date,
    total_amount
  FROM {{ source('raw', 'orders') }}
)

SELECT
  order_id,
  customer_id,
  order_date,
  total_amount
FROM raw_orders

/* select count(*) from raw_orders */