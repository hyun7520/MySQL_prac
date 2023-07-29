RENAME TABLE companies TO suppliers;

DESC companies;
DESC suppliers;

ALTER TABLE suppliers RENAME TO companies;

ALTER TABLE companies
RENAME COLUMN NAME TO company_name;