-- windows: crtl + ?
-- cách 1: tạo databse trưc tiếp tuef tabplus
-- cách 2: tạo database từ code sql
-- cách viết hoa
CREATE DATABASE node48_test
-- bôi đen phần code thực thi, ctrl + enter đẻ chạy code
-- cách viết thường
-- create database node48_tenmp
-- lưu ý: tạo database chỉ một lần

-- sử dụng DB mới tạo
use node48_test

-- tạo table
-- 3 kiểu dữ liệu:
-- string: varchar, text,
-- number: 
-- kiểu ngày tháng năm: date, datetime
-- https://www.w3schools.com/mysql/mysql_datatypes.asp

CREATE TABLE product(
-- 	<tên column> <kiểu dữ liệu> <constranint>
	product_name VARCHAR(100) NOT NULL,
	image VARCHAR(255),
-- 	nếu không truyền thì sẽ được phép null
	price double,
	rate INT
	
)

-- tạo table cho data product
INSERT INTO product (product_name, image, price, rate) VALUES
('Apple iPhone 13', 'iphone13.jpg', 799.99, 5),
('Samsung Galaxy S21', 'galaxy_s21.jpg', 799.99, 4),
('MacBook Pro 16', 'macbook_pro_16.jpg', 2399.99, 5),
('Sony WH-1000XM4', 'sony_headphones.jpg', 348.00, 4),
('Apple Watch Series 7', 'apple_watch_7.jpg', 399.00, 4),
('Samsung QLED 4K TV', 'samsung_qled_tv.jpg', 1200.00, 5),
('LG OLED TV', 'lg_oled_tv.jpg', 1500.00, 5),
('Nikon D850 Camera', 'nikon_d850.jpg', 2999.99, 4),
('GoPro HERO 10', 'gopro_hero10.jpg', 399.00, 4),
('Sony PlayStation 5', 'ps5.jpg', 499.00, 5),
('Xbox Series X', 'xbox_series_x.jpg', 499.00, 5),
('Dell XPS 13', 'dell_xps13.jpg', 1299.00, 4),
('Asus ROG Laptop', 'asus_rog_laptop.jpg', 1799.00, 4),
('Bose QuietComfort 35 II', 'bose_qc35ii.jpg', 299.00, 5),
('Oculus Quest 2', 'oculus_quest2.jpg', 299.00, 5),
('Google Pixel 6', 'google_pixel6.jpg', 599.00, 4),
('Microsoft Surface Laptop 4', 'surface_laptop_4.jpg', 1399.00, 4),
('Apple iPad Pro', 'ipad_pro.jpg', 999.00, 5),
('Samsung Galaxy Tab S7', 'galaxy_tab_s7.jpg', 649.99, 4),
('HP Spectre x360', 'hp_spectre_x360.jpg', 1499.00, 4);

-- dùng code sql để query data
SELECT * FROM product
-- * lấy hết tất cả column trong tale đó
SELECT product_name, image FROM product

SELECT product_name AS 'Tên sản phẩm' FROM product
-- AS: đổi tên column mỗi lần lấy dữ liệu
-- tên sản phẩm chỉ là tên tạm thời. Tên chính trong column vẫn là product_name


-- tạo tatble user (
-- 	full_name,
-- 	email,
-- 	phone,
-- 	address,
-- 	age

-- )

CREATE TABLE users(
	full_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone VARCHAR(20),
	address VARCHAR(255),
	age INT
	
)


-- tạo data for table users
INSERT INTO users (full_name, email, phone, address, age) VALUES
('Alice Johnson', 'alice.johnson@example.com', '123-456-7890', '123 Elm St, Springfield, IL', 29),
('Bob Smith', 'bob.smith@example.com', '987-654-3210', '456 Oak St, Springfield, IL', 34),
('Charlie Davis', 'charlie.davis@example.com', '456-789-0123', '789 Pine St, Springfield, IL', 27),
('Diana Martinez', 'diana.martinez@example.com', '321-654-9870', '101 Maple St, Springfield, IL', 41),
('Eve Thompson', 'eve.thompson@example.com', '654-321-0987', '202 Birch St, Springfield, IL', 36),
('Frank Miller', 'frank.miller@example.com', '123-123-1234', '303 Cedar St, Springfield, IL', 50),
('Grace Wilson', 'grace.wilson@example.com', '432-432-4321', '404 Willow St, Springfield, IL', 32),
('Henry Brown', 'henry.brown@example.com', '543-543-5432', '505 Pine St, Springfield, IL', 46),
('Isabel Moore', 'isabel.moore@example.com', '678-678-6789', '606 Oak St, Springfield, IL', 38),
('James Lee', 'james.lee@example.com', '765-765-7654', '707 Maple St, Springfield, IL', 28),
('Katherine Harris', 'katherine.harris@example.com', '890-890-8901', '808 Cedar St, Springfield, IL', 30),
('Liam White', 'liam.white@example.com', '987-987-9876', '909 Birch St, Springfield, IL', 25),
('Megan Clark', 'megan.clark@example.com', '111-111-1111', '1010 Pine St, Springfield, IL', 23),
('Nathaniel Young', 'nathaniel.young@example.com', '222-222-2222', '1111 Oak St, Springfield, IL', 33),
('Olivia Allen', 'olivia.allen@example.com', '333-333-3333', '1212 Maple St, Springfield, IL', 40),
('Peter Scott', 'peter.scott@example.com', '444-444-4444', '1313 Cedar St, Springfield, IL', 52),
('Quinn Adams', 'quinn.adams@example.com', '555-555-5555', '1414 Birch St, Springfield, IL', 45),
('Rachel King', 'rachel.king@example.com', '666-666-6666', '1515 Oak St, Springfield, IL', 29),
('Samuel Turner', 'samuel.turner@example.com', '777-777-7777', '1616 Pine St, Springfield, IL', 37),
('Tina Robinson', 'tina.robinson@example.com', '888-888-8888', '1717 Cedar St, Springfield, IL', 31);


SELECT * FROM users


-- query : filler data
-- câu 1: liệt kê những user có tuổi từ 25 --> 30 
-- và sắp xếp tăng dần or giảm dần

-- Câu 2: tìm những người có tên là John
-- câu 3: liệt kê những người có tuổi lớn nhất
-- Câu 4: đếm số lượng users trong danh sách --> count

--------------------------


-- Bài làm câu 1:
SELECT * FROM users
WHERE age BETWEEN 25 and 30
ORDER BY age ASC 
-- ASC: tăng dần


SELECT * FROM users
-- WHERE age > 25 and age < 30
WHERE 25 < age and age < 30
ORDER BY age DESC
-- DESC: giảm dần

------------------------------
-- Bài làm câu 2:
SELECT * FROM users
WHERE full_name LIKE '%John%'

-- %: bỏ qua những ký tự trước đó
-- %John: tìm những người có chữ John ở cuối (Emily John)
-- John%: tìm những người có John ở đầu (Johnson, Johnson baby...)
-- %John%: tìm những người có chữ John

------------------------------

-- Bài làm câu 3:

-- B1: tìm tuổi lớn nhất trong danh sách
-- B2: query những người bằng với tuổi lớn nhất

-- cách 1: dùng query lồng nhau
SELECT * FROM users
WHERE age = (
	
	SELECT age FROM users
	ORDER BY age DESC 
	LIMIT 1

)

-- cách 2: dùng keyword MAX  + query
SELECT * FROM users
WHERE age = (
	SELECT MAX(age) FROM users
)

------------------------------
-- Bài làm câu 4:

SELECT COUNT(*) AS 'Tổng số user' FROM users

-- **************************************************************

-- ****Update data, delete data****
-- phải thêm where để update hay delete data cụ thể

UPDATE users SET age = 30
WHERE full_name = 'Bob Smith'

SELECT * FROM users

-- update list users
UPDATE users set age = 100
WHERE full_name IN ('Charlie Davis','Diana Martinez')
SELECT * FROM users

-- delete user
DELETE FROM users
WHERE full_name = 'Charlie Davis'
-- hard delete


-- soft delete
-- is_delete or deleted_at để show or hidden data

SELECT * FROM USER_DEFINED_TYPE_SCHEMA

-- ****update table****
-- case 1: thêm column 
ALTER TABLE users
ADD COLUMN gender INT DEFAULT 1

SELECT * FROM users

-- case 2: update datatype cho column 
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(100) NOT NULL

-- tổng kết:
-- khái niệm cơ bản về cơ sở dữ liệu
-- cách tạo database, table, data
-- query data, filter data, update, delete data
-- update table

