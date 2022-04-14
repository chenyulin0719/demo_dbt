
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

select a.*
from {{ ref('my_first_dbt_model') }} a
join  {{ ref('my_second_dbt_model') }} b
on a.id = b.id
