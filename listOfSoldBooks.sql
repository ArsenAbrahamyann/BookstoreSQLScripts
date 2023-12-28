-- Join Query
SELECT
    sales.dateOfSale,
    books.title AS BookTitle,
    customer.name AS CustomerName
FROM
    sales
        JOIN books ON sales.book_Id = books.bookId
        JOIN customer ON sales.customer_Id = customer.customerId;