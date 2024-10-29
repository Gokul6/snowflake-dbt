with 

source as (

    select * from {{ source('raw_data', 'orders') }}

),

renamed as (

    select
        order_id,
        customer_id,
        order_date,
        total_amount,
        status,
        shipping_address,
        payment_method

    from source

)

select * from renamed
