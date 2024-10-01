CREATE DATABASE crowdfunding_db;

USE crowdfunding_db;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE fundraisers (
    fundraiser_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer VARCHAR(100) NOT NULL,
    title VARCHAR(255) NOT NULL,
    target_funding DECIMAL(10, 2) NOT NULL,
    current_funding DECIMAL(10, 2) DEFAULT 0,
    city VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO categories (name) VALUES 
('Healthcare'),
('Education'),
('Social Impact');

INSERT INTO fundraisers (organizer, title, target_funding, current_funding, city, is_active, category_id) VALUES
('Jackson Family', 'Help Rebuild after Flood', 10000, 7730, 'Byron Bay', TRUE, 1),
('Emily Smith', 'Support Children\'s Education', 5000, 2500, 'Sydney', TRUE, 2),
('John Doe', 'Medical Relief for John', 15000, 12000, 'Melbourne', TRUE, 1),
('Community Aid', 'Social Impact Project', 8000, 2000, 'Brisbane', TRUE, 3),
('Sarah Johnson', 'Emergency Medical Fund', 7000, 4500, 'Perth', TRUE, 1);
