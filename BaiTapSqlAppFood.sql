-- tạo database cho web app food
-- tạo table users
CREATE TABLE users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(255),
	email VARCHAR(255),
	pass_word VARCHAR(255)	
)

INSERT INTO users (full_name, email, pass_word) VALUES
('John Doe', 'johndoe@example.com', 'password123'),
('Jane Smith', 'janesmith@example.com', 'mypassword456'),
('Alice Johnson', 'alicej@example.com', 'alice789'),
('Bob Brown', 'bobbrown@example.com', 'bobpassword'),
('Charlie Wilson', 'charliew@example.com', 'charlie1234'),
('Emma Davis', 'emmad@example.com', 'emma567'),
('Liam Taylor', 'liamt@example.com', 'liam098'),
('Olivia Moore', 'oliviam@example.com', 'olivia123'),
('Noah Anderson', 'noaha@example.com', 'noah456'),
('Sophia Thomas', 'sophiat@example.com', 'sophia789'),
('James Jackson', 'jamesj@example.com', 'james999'),
('Mia White', 'miaw@example.com', 'mia567'),
('William Harris', 'williamh@example.com', 'william321'),
('Isabella Martin', 'isabellam@example.com', 'bella654'),
('Elijah Garcia', 'elijahg@example.com', 'elijahpass'),
('Amelia Martinez', 'ameliam@example.com', 'amelia123'),
('Lucas Lee', 'lucasl@example.com', 'lucaspass'),
('Charlotte Walker', 'charlottew@example.com', 'charlotte777'),
('Ethan Young', 'ethany@example.com', 'ethan888'),
('Harper Hall', 'harperh@example.com', 'harper654');


create table restaurant (
	res_id INT PRIMARY KEY AUTO_INCREMENT,
	res_name VARCHAR(255),
	image VARCHAR(255),
	description TEXT
)

INSERT INTO restaurant (res_name, image, description) VALUES
('The Gourmet Kitchen', 'gourmet_kitchen.jpg', 'A fine dining restaurant specializing in French cuisine.'),
('Sushi Haven', 'sushi_haven.jpg', 'The best sushi spot in town offering fresh and authentic Japanese dishes.'),
('Pasta Paradise', 'pasta_paradise.jpg', 'A cozy Italian restaurant with handmade pasta and delicious sauces.'),
('BBQ Kingdom', 'bbq_kingdom.jpg', 'Experience the best barbecue flavors from around the world.'),
('The Vegan Bistro', 'vegan_bistro.jpg', 'A plant-based haven for health-conscious food lovers.'),
('Ocean Delights', 'ocean_delights.jpg', 'Seafood specialties served fresh from the ocean.'),
('Spicy Corner', 'spicy_corner.jpg', 'Indian cuisine with bold flavors and a wide variety of spices.'),
('Burger Barn', 'burger_barn.jpg', 'Classic American burgers with a modern twist.'),
('Taco Fiesta', 'taco_fiesta.jpg', 'Authentic Mexican tacos bursting with flavor.'),
('Steakhouse Supreme', 'steakhouse_supreme.jpg', 'Premium cuts of steak grilled to perfection.'),
('Dim Sum Delight', 'dim_sum_delight.jpg', 'Traditional Chinese dim sum made fresh daily.'),
('Mediterranean Bliss', 'mediterranean_bliss.jpg', 'Healthy and delicious Mediterranean dishes.'),
('Cafe Cozy', 'cafe_cozy.jpg', 'A warm and inviting cafe with the best coffee and pastries.'),
('Korean Grill', 'korean_grill.jpg', 'Authentic Korean barbecue with a modern ambiance.'),
('Pizza Perfection', 'pizza_perfection.jpg', 'Wood-fired pizzas with fresh, high-quality ingredients.'),
('Thai Fusion', 'thai_fusion.jpg', 'A unique blend of traditional Thai and modern flavors.'),
('Bistro Bliss', 'bistro_bliss.jpg', 'A casual dining spot with a menu full of comfort food.'),
('Dessert Haven', 'dessert_haven.jpg', 'Heavenly desserts to satisfy your sweet tooth.'),
('Tapas Treat', 'tapas_treat.jpg', 'A lively spot offering delicious Spanish tapas.'),
('The Breakfast Club', 'breakfast_club.jpg', 'Start your day with hearty breakfast options and fresh coffee.');

-- tạo table like_res
CREATE TABLE like_res (
	like_res_id INT PRIMARY KEY AUTO_INCREMENT,
	
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	
	date_like DATE
)

INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 3, '2025-01-01'),
(1, 4, '2025-01-01'),
(2, 5, '2025-01-02'),
(3, 7, '2025-01-03'),
(4, 9, '2025-01-04'),
(5, 2, '2025-01-05'),
(6, 4, '2025-01-06'),
(7, 6, '2025-01-07'),
(8, 8, '2025-01-08'),
(9, 1, '2025-01-09'),
(10, 10, '2025-01-10'),
(11, 12, '2025-01-11'),
(12, 14, '2025-01-12'),
(13, 15, '2025-01-13'),
(14, 11, '2025-01-14'),
(15, 13, '2025-01-15');

-- 1. tìm 5 người like nhà hàng nhiều nhất
-- B1: tìm table để kết bảng
-- users, like_res
-- để đếm số lượng like
-- dùng 1 số hàm tổng hợp => COUNT
SELECT COUNT(u.user_id) AS 'Số lượng like', u.user_id FROM users AS u
JOIN like_res AS lr ON u.user_id = lr.user_id
GROUP BY u.user_id
ORDER BY COUNT(u.user_id) DESC
LIMIT 5