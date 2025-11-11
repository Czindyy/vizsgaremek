
CREATE DATABASE car_rental;
USE car_rental;

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  phonenum INT,
  jogositvany INT
);

CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brand INT,
  category INT,
  model VARCHAR(100),
  price_per_day INT,
  available BOOLEAN
);

CREATE TABLE bookings (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  car_id INT,
  date_from DATE,
  date_to DATE,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (car_id) REFERENCES cars(id)
);

INSERT INTO users (name, email, phonenum, jogositvany) VALUES
('Peter Kiss', 'peter.kiss@email.com', '06701234567'),
('Anna Kovacs', 'anna.kovacs@email.com', '06503217654'),
('David Nagy', 'david.nagy@email.com', '06207654321');

INSERT INTO cars (brand) VALUES
('BMW'),
('Audi'),
('Toyota'),
('Mercedes'),
('Ford');

INSERT INTO cars (category) VALUES
('Sedan'),
('SUV'),
('Coupe'),
('Sport'),
('Electric');

INSERT INTO cars (brand_id, category_id, model, price_per_day, available) VALUES
('BMW', 1, 2, 'X5', 25000, TRUE),
('BMW', 1, 1, '320i', 18000, TRUE),
('Audi', 2, 1, 'A4', 19000, TRUE),
('Audi', 2, 3, 'TT', 27000, FALSE),
('Toyota', 3, 4, 'Supra', 30000, TRUE),
('Mercedes', 4, 2, 'GLC', 28000, TRUE),
('Ford', 5, 5, 'Mustang Mach-E', 32000, TRUE);

INSERT INTO bookings (user_id, car_id, date_from, date_to) VALUES
(1, 1, '2025-05-01', '2025-05-05'),
(2, 3, '2025-06-10', '2025-06-15'),
(3, 5, '2025-07-01', '2025-07-03');
