WITH date_spine AS (
  SELECT
    date_trunc('day', date_add('day', seq, '2020-01-01')) AS date_day
  FROM
    generate_series(0, 3650) AS seq
)

SELECT
  date_day
FROM
  date_spine