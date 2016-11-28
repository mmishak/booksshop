
DELETE FROM table_category WHERE id NOT IN 
(
	SELECT category_id FROM table_book_category
	GROUP BY category_id
);