SELECT
    u.id,
    u.full_name AS name
FROM
    users u
WHERE
    name LIKE "A%";