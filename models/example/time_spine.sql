WITH RECURSIVE date_spine AS (
  SELECT DATE('2023-01-01') AS date
  UNION ALL
  SELECT DATEADD(day, 1, date)
  FROM date_spine
  WHERE date < CURRENT_DATE
)
SELECT date
FROM date_spine