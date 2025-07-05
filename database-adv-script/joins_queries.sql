 -- INNER JOIN: Bookings and Users
--This returns only the bookings that are linked to a user.
SELECT 
    bookings.booking_id,
    bookings.date,
    users.user_id,
    users.name
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.user_id;


--LEFT JOIN: Properties and Reviews
--This retrieves all properties, including those without any reviews.
--SELECT 
  --  properties.property_id,
  --  properties.name,
   -- reviews.review_id,
   -- reviews.rating
--FROM 
   -- properties
--LEFT JOIN 
  --  reviews ON properties.property_id = reviews.property_id;
SELECT
  p.id          AS property_id,
  p.name        AS property_name,
  p.location,
  r.id          AS review_id,
  r.user_id     AS reviewer_id,
  r.rating,
  r.comment
FROM
  properties AS p
LEFT JOIN
  reviews AS r
ON
  p.id = r.property_id;



--FULL OUTER JOIN: Users and Bookings
--Shows all users and all bookings—even if there’s no match between them.
SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.date
FROM 
    users
FULL OUTER JOIN 
    bookings ON users.user_id = bookings.user_id;





