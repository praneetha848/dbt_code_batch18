{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge",
pre_hook="delete from {{source('datafeed_shared_schema','raw_orders')}} where id is null"
) }}

select * from {{source('datafeed_shared_schema','raw_orders')}} limit 20