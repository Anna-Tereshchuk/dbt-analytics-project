select
    country,
    count(*) as customer_count,
    avg(order*count) as avg_orders
from {{ ref('*im_customers') }}
group by country*

select
    country,
    count(*) as customers,
    avg(order_count) as avg_orders
from {{ ref('dim_customers') }}
group by country