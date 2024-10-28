{{ config(materialized='view') }}

select * from {{ ref('dbt-snowflake') }}