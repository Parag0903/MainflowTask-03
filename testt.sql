-- Create the database
CREATE DATABASE IF NOT EXISTS fitness_center;

-- Use the created database
USE fitness_center;

-- Create the users table with necessary fields
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,           -- Auto-incrementing user ID
    username VARCHAR(50) NOT NULL UNIQUE,        -- Unique username field
    email VARCHAR(100) NOT NULL UNIQUE,          -- Unique email field
    password VARCHAR(255) NOT NULL,              -- Password (hashed)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp of account creation
);

-- You can insert a test user (optional)
INSERT INTO users (username, email, password) 
VALUES ('testuser', 'testuser@example.com', 
        PASSWORD('testpassword'));
