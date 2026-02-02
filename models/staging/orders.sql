WITH tb1 as(
    select id,
    order_date,
    user_id

    from {{source('datafeed_shared_schema','raw_orders')}})
select * from tb1