
CREATE DATABASE car_rental;
USE car_rental;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
);

CREATE TABLE brands (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brand_id INT,
  category_id INT,
  model VARCHAR(100),
  price_per_day INT,
  available BOOLEAN,
  FOREIGN KEY (brand_id) REFERENCES brands(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE bookings (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  car_id INT,
  date_from DATE,
  date_to DATE,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (car_id) REFERENCES cars(id)
);

INSERT INTO users (name, email) VALUES
('Peter Kiss', 'peter.kiss@email.com'),
('Anna Kovacs', 'anna.kovacs@email.com'),
('David Nagy', 'david.nagy@email.com',);

INSERT INTO brands (name) VALUES
('BMW'),
('Audi'),
('Toyota'),
('Mercedes'),
('Ford');

INSERT INTO categories (name) VALUES
('Sedan'),
('SUV'),
('Coupe'),
('Sport'),
('Electric');

INSERT INTO cars (brand_id, category_id, model, price_per_day, available) VALUES
(1, 2, 'X5', 25000, TRUE),
(1, 1, '320i', 18000, TRUE),
(2, 1, 'A4', 19000, TRUE),
(2, 3, 'TT', 27000, FALSE),
(3, 4, 'Supra', 30000, TRUE),
(4, 2, 'GLC', 28000, TRUE),
(5, 5, 'Mustang Mach-E', 32000, TRUE);

INSERT INTO bookings (user_id, car_id, date_from, date_to) VALUES
(1, 1, '2025-05-01', '2025-05-05'),
(2, 3, '2025-06-10', '2025-06-15'),
(3, 5, '2025-07-01', '2025-07-03');