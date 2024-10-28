
-- Use the `ref` function to select from other models

create or replace view test as (
  select *
from {{ ref('my_first_dbt_model') }}
where id = 1
)
