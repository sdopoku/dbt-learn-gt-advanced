WITH stg_jaffle_shop__customers AS (
  /* Staged customer data from our jaffle shop app. */
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'stg_jaffle_shop__customers') }}
), last_name_contains_m_sql AS (
  SELECT
    *
  FROM stg_jaffle_shop__customers
  WHERE
    LAST_NAME LIKE '%M%'
), dim_m_sql AS (
  SELECT
    *
  FROM last_name_contains_m_sql
)
SELECT
  *
FROM dim_m_sql