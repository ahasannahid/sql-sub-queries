
CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    base_price FLOAT NOT NULL,
    final_price FLOAT
);

SELECT * FROM products;


INSERT INTO products (title, base_price) VALUES
    ('Banana', 15.99);

CREATE or REPLACE Trigger add_tax_trigger 
BEFORE
insert on products
FOR EACH ROW
EXECUTE FUNCTION update_final_price();

CREATE or REPLACE FUNCTION  update_final_price()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        -- keyword==> new, old
        NEW.final_price := NEW.base_price * 1.05;
        RETURN NEW;
        -- COMMIT
        -- ROLLBACK
    END;

$$;

   
