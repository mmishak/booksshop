CREATE procedure PROC1(
bookID integer,
orderID integer,
price integer,
number integer)
as
declare variable temp integer;
begin
insert into table_order_list (order_id, book_id, price, number) value (:orderID, :bookID, :price, :number);

for
select category_id from table_category_book
where book_id=:bookID
into :temp
do
begin
insert into recommendation  (order_id, book_id) value (:orderID, 
select id from table_book where rating=max(rating) );
end
end
