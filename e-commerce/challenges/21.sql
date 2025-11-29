SELECT
    u.id AS user_id,
    u.full_name,
    o.id AS order_id,
    o.order_date,
    o.status
FROM
    users u
    LEFT JOIN orders o ON u.id = o.user_id
ORDER BY
    u.id,
    o.order_date;