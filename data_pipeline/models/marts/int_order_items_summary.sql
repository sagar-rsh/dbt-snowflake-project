select
  order_key,
  sum(extended_price) as gross_item_sales_amount,
  sum(item_discount_amount) as gross_discount_amount,
  sum(item_tax_amount) as gross_tax_amount
from
  {{ ref('int_order_items') }}
group by
  order_key