-- number and abbreviation of states
SELECT
  DISTINCT state
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
  

-- Top 3 male names in OH (2021)
SELECT
  name,
  SUM(number) AS total
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
WHERE
  gender = "M"AND
  year= 2021 AND
  state= 'OH'
GROUP BY
  name
ORDER BY
  total DESC
LIMIT 3;


-- Top 3 female names in the US (all years combined)
SELECT
  name,
  SUM(number) AS total
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
WHERE
  gender = "F"
GROUP BY
  name
ORDER BY
  total DESC
LIMIT 3;
