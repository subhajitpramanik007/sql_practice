SELECT
    COUNT(p.id) AS total_products
FROM
    products p
WHERE
    p.price < 50;