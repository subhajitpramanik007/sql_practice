SELECT
    o.id AS order_id,
    u.full_name,
    o.status,
    o.order_date,
    GROUP_CONCAT (p.name || ' (' || oi.price_at_purchase || ')', ', ') AS order_items_list
FROM
    orders o
    JOIN users u ON o.user_id = u.id
    JOIN order_items oi ON oi.order_id = o.id
    JOIN products p ON oi.product_id = p.id
WHERE
    o.status = 'delivered'
GROUP BY
    o.id,
    u.full_name,
    o.status,
    o.order_date;

-- Must group by all non-aggregated columns