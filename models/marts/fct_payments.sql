with stripe_payments as (

    select * from {{ ref('stg_stripe__payments') }}

),

final as (

    select 
        payment_id,
        order_id,
        created,
        amount_usd,
        payment_method,
        status
    from stripe_payments
)


select * from final