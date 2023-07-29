SELECT * FROM houses;

ALTER TABLE houses ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);

INSERT INTO houses (purchase_price, sale_price) VALUES(-1, 4);

ALTER TABLE houses DROP CONSTRAINT positive_pprice;