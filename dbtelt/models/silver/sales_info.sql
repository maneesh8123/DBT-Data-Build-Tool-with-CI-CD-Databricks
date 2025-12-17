select 
     quantity ,
     unit_price,
     {{ multiply('quantity', 'unit_price') }} as gross_amount,
     net_amount
from {{ref('bronze_fact_sales')}} as bs
join 
    {{ref('bronze_dim_customer')}} as dc
on bs.customer_sk = dc.customer_sk