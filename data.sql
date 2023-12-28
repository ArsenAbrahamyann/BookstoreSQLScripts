-- Populate Books Table
INSERT INTO books(bookId, title, author, genre, price, quantityInStock)
VALUES (1,'To Kill a Mockingbird','Harper Lee','Classic, Fiction',15.58,10),
       (2,'1984','George Orwell',' Dystopian, Science Fiction',123.5,5),
       (3,'Pride and Prejudice','Jane Austen','Classic, Romance',68.12,7),
       (4,'The Great Gatsby',' F. Scott Fitzgerald',' Classic, Fiction',25.78,15),
       (5,'Harry Potter and the Sorcerer''s Stone ','J.K. Rowling',' Fantasy',36.65,8),
       (6,'The Catcher in the Rye','J.D. Salinger','Coming-of-age, Fiction',99.98,25),
       (7,'The Hobbit',' J.R.R. Tolkien ',' Fantasy',55.42,80),
       (8,'To the Lighthouse','Virginia Woolf ','Modernist, Fiction',48.84,11),
       (9,'Brave New World','Aldous Huxley','Dystopian, Science Fiction',9.2,3),
       (10,'The Hitchhiker''s Guide to the Galaxy','Douglas Adams',' Science Fiction,Comedy',33.22,40);



-- Populate Customers Table
INSERT INTO customer(customerId, name, email, phone)
VALUES (1,'Armen','Abrahamyan@gmail.com','055-68-48-52'),
       (2,'Gexam','Haroyan@gmail.com','095-34-48-88'),
       (3,'Harut','Poxosyan@mail.ru','099-54-45-65'),
       (4,'Anna','Anna@gmail.com','077-77-88-99'),
       (5,'Maria','Berberyan@mail.ru','033-00-03-03');


-- Populate Sales Table
INSERT INTO sales(saleID, book_Id, customer_Id, dateOfSale, quantitySold, totalPrice)
VALUES (1,2,3,'2020-01-25',3,370.5),
       (2,5,3,'2023-05-07',6,219.9),
       (3,4,5,'2021-05-12',7,180.46),
       (4,9,1,'2022-12-12',2,64.4),
       (5,10,2,'2023-06-24',2,66.44);