SELECT
    r.rating,
    COUNT(r.id) as no_of_rating
FROM
    reviews r
GROUP BY
    rating;