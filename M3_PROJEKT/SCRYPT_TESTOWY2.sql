
CREATE SCHEMA training;

CREATE TABLE training.sales (id integer);

DROP SCHEMA training;

---

DROP SCHEMA training CASCADE;

CREATE TABLE products (id integer PRIMARY KEY);
CREATE TABLE sales (id integer PRIMARY KEY, 
				    product_id integer REFERENCES products);

INSERT INTO products VALUES (1);
INSERT INTO sales VALUES (1,1), (2,1);

DROP TABLE products;

---

DROP TABLE products CASCADE;les_over_1k CHECK (sales > 1000);