INSERT INTO users (full_name, email, country) VALUES
('Alice Johnson', 'alice@mail.com', 'USA'),
('Bob Martin', 'bob@mail.com', 'Canada'),
('Charlie Kim', 'charlie@mail.com', 'Korea'),
('David Lee', 'david@mail.com', 'USA'),
('Emma Watson', 'emma@mail.com', 'UK'),
('Fernando Ruiz', 'fernando@mail.com', 'Spain'),
('Grace Park', 'grace@mail.com', 'Korea'),
('Hannah Smith', 'hannah@mail.com', 'Canada'),
('Ian Chen', 'ian@mail.com', 'China'),
('Julia Roberts', 'julia@mail.com', 'USA'),
('Kevin Turner', 'kevin@mail.com', 'Australia'),
('Liam O’Connor', 'liam@mail.com', 'Ireland'),
('Mia Khalid', 'mia@mail.com', 'UAE');

INSERT INTO products (name, price) VALUES
('Laptop', 1200),
('Keyboard', 45),
('Headphones', 89),
('Monitor', 300),
('Mouse', 25),
('Smartphone', 799),
('Tablet', 499),
('USB-C Cable', 12),
('Webcam', 60),
('Gaming Chair', 250),
('Desk Lamp', 40),
('Bluetooth Speaker', 120),
('Portable SSD 1TB', 140),
('Mechanical Keyboard', 110),
('Wireless Charger', 30);

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Computers'),
('Accessories'),
('Gaming'),
('Furniture'),
('Mobile'),
('Audio'),
('Office'),
('Storage');

INSERT INTO product_categories VALUES
(1, 1), (1, 2),
(2, 1), (2, 3),
(3, 1), (3, 3),
(4, 1), (4, 2),
(5, 1), (5, 3),
(6, 5),  -- Desk Lamp -> Office
(7, 4),  -- Speaker -> Audio
(8, 6),  -- SSD -> Storage
(9, 3),  -- Mechanical Keyboard -> Computers
(10, 3), -- Wireless Charger -> Mobile
(11, 3), -- Smartphone -> Mobile
(11, 1), -- Smartphone -> Electronics
(12, 3), -- Tablet -> Mobile
(12, 1),
(13, 3), -- USB-C Cable -> Mobile
(14, 1), -- Webcam -> Electronics
(15, 1), -- Gaming Chair -> Electronics
(15, 2), -- Gaming Chair -> Furniture
(16, 5); -- Desk Lamp -> Office

INSERT INTO inventory VALUES
(1, 10, '2024-11-01'),
(2, 25, '2024-11-03'),
(3, 15, '2024-11-05'),
(4, 5,  '2024-11-02'),
(5, 50, '2024-11-06'),
(6, 40, '2024-11-10'),
(7, 18, '2024-11-11'),
(8, 25, '2024-11-15'),
(9, 30, '2024-11-12'),
(10, 100, '2024-11-08'),
(11, 50, '2024-11-04'),
(12, 20, '2024-11-05'),
(13, 200, '2024-11-06'),
(14, 12, '2024-11-14'),
(15, 8,  '2024-11-11'),
(16, 40, '2024-11-13');

INSERT INTO orders (user_id, status) VALUES
(1, 'delivered'),
(2, 'shipped'),
(3, 'pending');

INSERT INTO orders (user_id, status, order_date) VALUES
(4, 'delivered', '2024-10-22'),
(5, 'delivered', '2024-11-01'),
(6, 'pending',   '2024-11-10'),
(7, 'shipped',   '2024-11-12'),
(8, 'delivered', '2024-11-14'),
(9, 'cancelled', '2024-11-02'),
(10, 'delivered','2024-11-08'),
(11, 'shipped',  '2024-11-09'),
(12, 'pending',  '2024-11-11'),
(13, 'delivered','2024-11-15');


INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 1200),
(1, 3, 1, 89),
(2, 4, 2, 300),
(3, 5, 3, 25),
(4,  6, 1, 40),
(4,  7, 2, 120),
(5,  11, 1, 799),
(5,  13, 3, 12),
(6,  12, 1, 499),
(6,  10, 2, 30),
(7,  15, 1, 250),
(7,  14, 1, 60),
(8,  8, 1, 140),
(8,  9, 1, 110),
(9,  16, 2, 40),
(10, 7, 1, 120),
(10, 11, 1, 799),
(11, 12, 2, 499),
(11, 8, 1, 140);

INSERT INTO payments (order_id, amount, payment_method) VALUES
(1, 1289, 'card'),
(2, 600, 'paypal');

INSERT INTO payments (order_id, amount, payment_method, payment_date) VALUES
(4, 280, 'card',   '2024-10-22'),
(5, 835, 'paypal', '2024-11-01'),
(7, 310, 'cash',   '2024-11-12'),
(8, 250, 'card',   '2024-11-14'),
(10, 919, 'card',  '2024-11-15'),
(11, 1138,'paypal','2024-11-09');


INSERT INTO reviews (user_id, product_id, rating, comment) VALUES
(1, 1, 5, 'Excellent laptop!'),
(2, 3, 4, 'Good sound.'),
(3, 5, 5, 'Great mouse!');

INSERT INTO reviews (user_id, product_id, rating, comment, review_date) VALUES
(4, 11, 5, 'Amazing smartphone!', '2024-11-05'),
(5, 7, 4, 'Solid speaker, great value.', '2024-11-06'),
(6, 12, 3, 'Tablet is okay but battery is weak.', '2024-11-07'),
(7, 8, 5, 'Super fast SSD!', '2024-11-02'),
(8, 9, 4, 'Loud and clicky mechanical keyboard.', '2024-11-01),
(9, 10, 5, 'Wireless charger works perfectly.', '2024-11-02'),
(10, 14, 2, 'Webcam quality is disappointing.', '2024-11-03');
