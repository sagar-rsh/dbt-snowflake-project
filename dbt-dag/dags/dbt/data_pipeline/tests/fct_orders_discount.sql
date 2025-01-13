select
  *
from
  {{ ref('fct_orders') }}
where
  gross_discount_amount > 0
  