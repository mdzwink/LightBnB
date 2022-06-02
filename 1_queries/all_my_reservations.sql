SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON properties.id = property_id
JOIN property_reviews ON properties.id = property_id
WHERE guest_id = 1
ORDER BY start_date
LIMIT 10;
