SELECT
    p.name,
    inv.stock
FROM
    inventory inv
    JOIN products p ON inv.product_id = p.id
WHERE
    inv.stock > 50;