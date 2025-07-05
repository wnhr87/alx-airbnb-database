-- 1. Non-Correlated Subquery: Properties with Average Rating > 4.0
--This query uses a subquery that runs independently to calculate average ratings per property.
SELECT 
    property_id,
    name
FROM 
    properties
WHERE 
    property_id IN (
        SELECT 
            property_id
        FROM 
            reviews
        GROUP BY 
            property_id
        HAVING 
            AVG(rating) > 4.0
    );

--Correlated Subquery: Users with More Than 3 Bookings
--This subquery depends on the outer query for each row it evaluates.
SELECT 
    user_id,
    name
FROM 
    users u
WHERE 
    (
        SELECT 
            COUNT(*) 
        FROM 
            bookings b 
        WHERE 
            b.user_id = u.user_id
    ) > 3;
