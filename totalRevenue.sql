-- Aggregation Query
SELECT
    books.genre,
    SUM(sales.totalPrice) AS TotalRevenue
FROM
    sales
        JOIN books ON sales.book_Id = books.BookId
GROUP BY
    books.genre;