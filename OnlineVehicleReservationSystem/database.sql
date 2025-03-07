-- 🚗 Create Database
CREATE DATABASE vehicle_reservation_system;
USE vehicle_reservation_system;

-- 👥 Users Table (Authentication)
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, -- Now supports secure hashing
    email VARCHAR(100) UNIQUE NOT NULL,
    role ENUM('Admin', 'User') DEFAULT 'User',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 🚘 Vehicles Table
CREATE TABLE vehicles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_number VARCHAR(20) UNIQUE NOT NULL,
    model VARCHAR(100) NOT NULL,
    type ENUM('Sedan', 'SUV', 'Hatchback', 'Van') NOT NULL,
    seating_capacity INT NOT NULL,
    availability BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 👨‍✈️ Drivers Table
CREATE TABLE drivers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    license_number VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL,
    assigned_vehicle_id INT,
    FOREIGN KEY (assigned_vehicle_id) REFERENCES vehicles(id) ON DELETE SET NULL
);

-- 📅 Bookings Table (🚨 **Fixes Applied** 🚨)
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booking_number VARCHAR(20) UNIQUE NOT NULL,
    user_id INT NOT NULL,  -- Now references user ID (fix)
    vehicle_id INT NOT NULL,  -- Now references vehicle ID (fix)
    driver_id INT,
    pickup_location VARCHAR(255) NOT NULL,
    drop_location VARCHAR(255) NOT NULL,
    booking_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Pending', 'Confirmed', 'Completed', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id) ON DELETE CASCADE,
    FOREIGN KEY (driver_id) REFERENCES drivers(id) ON DELETE SET NULL
);

-- 💳 Payments Table
CREATE TABLE payments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_status ENUM('Pending', 'Completed', 'Failed') DEFAULT 'Pending',
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES bookings(id) ON DELETE CASCADE
);

-- 🔹 **Insert Default Admin User** (Password: `admin123`, Hashed using BCrypt)
INSERT INTO users (fullname, username, password, email, role) 
VALUES ('System Admin', 'admin', '$2a$10$VjE0NzUzMzE0NzUz.bciE69T0p2mWvi7hPUyCkmHtnpeYJQ5s9EWe', 'admin@vrs.com', 'Admin');

ALTER TABLE users MODIFY COLUMN role ENUM('Admin', 'User') NOT NULL DEFAULT 'User';

SELECT * FROM users


