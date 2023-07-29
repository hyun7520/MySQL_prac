ALTER TABLE companies 
ADD COLUMN phone VARCHAR(15);

INSERT INTO companies (name, address) 
VALUES ('blackbird auto', '123 spruce'), 
('luigis pies', '124 spruce');

UPDATE companies 
SET 
    address = '123 spruce'
WHERE
    name = 'luigis pies';

SELECT * FROM companies;

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;