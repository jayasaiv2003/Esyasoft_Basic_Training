use db

select* from users

select* from books

select* from orders

--week2_assignment
--question 1
--Top N Books per User.
--Find the top 2 most expensive books purchased by each user
SELECT *
FROM (
    SELECT 
        u.user_id,
        u.name AS user_name,
        b.title AS book_title,
        b.price,
        ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS RowNum,
        RANK() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS RankNum,
        DENSE_RANK() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS DenseRankNum
    FROM users u inner join orders o on u.user_id=o.user_id
inner join books b on o.product_id=b.product_id 
) AS RankedBooks
WHERE RowNum <= 2
ORDER BY user_id, RowNum;


--Question2
--Find how much each user spent in total and rank them

SELECT 
    u.user_id,
    u.name,
    SUM(b.price) AS TotalSpent,
    RANK() OVER (ORDER BY SUM(b.price) DESC) AS RankNum,
    DENSE_RANK() OVER (ORDER BY SUM(b.price) DESC) AS DenseRankNum
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN books b ON o.product_id = b.product_id
GROUP BY u.user_id, u.name;


