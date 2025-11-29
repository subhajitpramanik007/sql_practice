SELECT
    o.id AS order_id,
    o.user_id,
    o.order_date,
    SUM(oi.price_at_purchase) AS total_amonut
FROM
    orders o
    JOIN order_items oi ON o.id = oi.order_id
GROUP BY
    o.id,
    o.user_id,
    o.order_date
ORDER BY
    o.id;