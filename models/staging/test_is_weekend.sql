select
    orderid,
    order_date,
    {{ is_weekend('order_date') }} as is_weekend_order
from {{  source('all_students', 'Orders')  }}
