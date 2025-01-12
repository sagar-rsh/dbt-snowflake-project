{% macro discounted_amount(extended_price, discount_percentage, scale=2) %}
    (-1 * {{extended_price}} * {{discount_percentage}})::decimal(16, {{ scale }})
{% endmacro %}

{% macro tax_amount(extended_price, discount_percentage , tax_rate, scale=2) %}
    ({{extended_price}} * (1 - {{ discount_percentage }}) * {{tax_rate}})::decimal(16, {{ scale }})
{% endmacro %}
