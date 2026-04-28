CREATE DATABASE IF NOT EXISTS contactsdb;

USE contactsdb;

CREATE TABLE IF NOT EXISTS contacts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL
);

INSERT INTO contacts (name, phone, email)
VALUES ('Saravanan', '9876543210', 'saravanan@example.com');
