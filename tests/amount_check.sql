select id,spent

from {{ref('snap_customers_timestamp')}}
having (spent <  0)