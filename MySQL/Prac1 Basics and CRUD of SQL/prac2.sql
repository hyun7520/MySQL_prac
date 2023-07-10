CREATE TABLE Employees(
id INT PRIMARY KEY AUTO_INCREMENT,
-- PRIMARY KEY(id)
last_name VARCHAR(50) NOT NULL,
first_name VARCHAR(50) NOT NULL,
middle_name VARCHAR(50),
age INT NOT NULL,
current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
);

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);