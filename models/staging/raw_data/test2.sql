-- my_semantic_model.sql
select 
    customer_id,
    sum(total_amount) as total_sales,
    count(order_id) as total_orders
from 
    {{ ref('stg_raw_data__orders') }}
group by 
    customer_id
