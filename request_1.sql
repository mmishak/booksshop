


	SELECT FIRST 5 book_id FROM table_order_list
	WHERE order_id IN 
	(
		SELECT id FROM table_order WHERE date_order BETWEEN date '01.10.2016' AND date '31.10.2016'
	)
	GROUP BY book_id
	ORDER BY COUNT(book_id) DESC


	UNION

	SELECT FIRST 5 id FROM table_book
	ORDER BY rating DESC
	