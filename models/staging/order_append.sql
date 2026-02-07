{{ config(
    materialized='incremental',
    incremental_strategy='append',
    post_hook ="delete from {{source('datafeed_shared_schema','raw_orders')}} where id in (select id  from {{source('datafeed_shared_schema','raw_orders')}} limit 15) "
) }}

select * from {{source('datafeed_shared_schema','raw_orders')}}  limit 15
