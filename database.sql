CREATE DATABASE concrete_service_db;
CREATE TABLE services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NULL
);
INSERT INTO services (service_name, description, price) VALUES 
('Residential Concrete', 'Concrete services for residential homes including patios and driveways.', 2500.00),
('Commercial Concrete', 'Large-scale commercial concrete services including foundations and parking lots.', 8000.00),
('Decorative Concrete', 'Specialized decorative concrete solutions such as stamped and stained concrete.', 4500.00);
CREATE TABLE inquiries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO inquiries (name, email, message) VALUES
('John Doe', 'johndoe@example.com', 'I would like to inquire about your residential concrete services.'),
('Jane Smith', 'janesmith@example.com', 'Can you provide a quote for a commercial project?');


