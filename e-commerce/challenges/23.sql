SELECT
    p.*,
    c.category_name
FROM
    products p
    JOIN product_categories pc ON pc.product_id = p.id
    JOIN categories c ON pc.category_id = c.id;