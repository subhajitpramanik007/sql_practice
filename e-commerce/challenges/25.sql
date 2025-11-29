SELECT
    p.id,
    p.name AS product_name,
    GROUP_CONCAT (c.category_name, ', ') AS categories,
    COUNT(pc.category_id) AS category_count
FROM
    products p
    JOIN product_categories pc ON p.id = pc.product_id
    JOIN categories c ON pc.category_id = c.id
GROUP BY
    p.id,
    p.name
HAVING
    COUNT(pc.category_id) > 1
ORDER BY
    category_count DESC;