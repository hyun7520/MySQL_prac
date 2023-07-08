-- CREATE TABLE shops (name VARCHAR(100));

CREATE TABLE cats2 ( 
name VARCHAR(50) NOT NULL DEFAULT 'mystery',
age INT DEFAULT 99
);

INSERT INTO cat3(age) VALUES(2);

CREATE TABLE unique_cats3 (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);
