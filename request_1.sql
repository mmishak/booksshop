
select id from (
        SELECT FIRST 5 book_id as id FROM table_order_list
        WHERE order_id IN 
        (
            SELECT id FROM table_order WHERE date_order BETWEEN date '01.10.2016' AND date '31.10.2016'
        )
        GROUP BY book_id
        ORDER BY COUNT(book_id) DESC

)
    UNION
select id from (
    SELECT FIRST 5 id FROM table_book
    ORDER BY rating DESC
)