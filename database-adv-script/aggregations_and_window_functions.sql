-- Total Number of Bookings per User


SELECT
  u.id               AS user_id,
  u.username         AS username,
  COUNT(b.id)        AS total_bookings
FROM
  users AS u
LEFT JOIN
  bookings AS b
ON
  u.id = b.user_id
GROUP BY
  u.id,
  u.username
ORDER BY
  total_bookings DESC;


-- Rank Properties by Total Bookings

WITH property_counts AS (
  SELECT
    p.id        AS property_id,
    p.name      AS property_name,
    COUNT(b.id) AS total_bookings
  FROM
    properties AS p
  LEFT JOIN
    bookings AS b
  ON
    p.id = b.property_id
  GROUP BY
    p.id,
    p.name
)
SELECT
  property_id,
  property_name,
  total_bookings,
  RANK() OVER (
    ORDER BY total_bookings DESC
  ) AS booking_rank
FROM
  property_counts
ORDER BY
  booking_rank;
