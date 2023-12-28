CREATE DATABASE BookstoreDB;


-- Create Books Table
CREATE TABLE  IF NOT EXISTS books(
    bookId INT PRIMARY KEY ,
    title VARCHAR(100) NOT NULL ,
    author VARCHAR(128) NOT NULL ,
    genre VARCHAR(128) NOT NULL ,
    price DECIMAL(10, 2) ,
    quantityInStock INT
    );


-- Create Customers Table
CREATE TABLE IF NOT EXISTS customer(
    customerId INT  PRIMARY KEY,
    name VARCHAR(128) NOT NULL ,
    email VARCHAR(100) NOT NULL ,
    phone VARCHAR(15) NOT NULL
    );



-- Create Sales Table with FK Constraints
CREATE TABLE sales(
                      saleID INT  PRIMARY KEY ,
                      book_Id INT REFERENCES books(bookId) NOT NULL ,
                      customer_Id INT REFERENCES customer(customerId) NOT NULL ,
                      dateOfSale DATE ,
                      quantitySold INT ,
                      totalPrice DECIMAL(10, 2)
);


-- Trigger for QuantityInStock Update
CREATE OR REPLACE FUNCTION update_quantity_in_stock()
    RETURNS TRIGGER AS $$
BEGIN
    IF NEW.QuantitySold <= (SELECT QuantityInStock FROM Books WHERE BookID = NEW.book_id) THEN
UPDATE Books
SET QuantityInStock = QuantityInStock - NEW.QuantitySold
WHERE BookID = NEW.book_id;
RETURN NEW;
ELSE
        RAISE EXCEPTION 'Not enough books in stock for sale (BookID: %)', NEW.book_id;
END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_insert_update_quantity
    AFTER INSERT ON Sales
    FOR EACH ROW
    EXECUTE FUNCTION update_quantity_in_stock();