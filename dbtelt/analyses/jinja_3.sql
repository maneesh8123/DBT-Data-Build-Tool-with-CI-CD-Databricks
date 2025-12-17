-- incremental loading from bronze to silver


{% set inc_flag = 1 %}
{% set last_load = 3 %}

{% set col_list = ['date_sk', 'store_sk', 'customer_sk', 'product_sk', 'gross_amount', 'net_amount'] %}

select 
    {% for i in col_list %}
        {{ i }}
    {% endfor %}    
from {{ref('bronze_fact_sales')}}

{% if inc_flag == 1 %}
    where 
        date_sk > {{ last_load }}
{% endif %}    
