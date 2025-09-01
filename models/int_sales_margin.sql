select *,
b.purchase_price * a.revenue as purchase_cost,
a.revenue - (a.quantity * b.purchase_price) as margin,
from  {{ ref('stg_raw__sales')}} as a 
left join {{ ref('stg_raw__product')}} as b
using(products_id)
