connect 'D:\Database\booksshop\BooksShop.fdb' user 'SYSDBA' password 'masterkey';
	
set term ^;
	
drop trigger new_book_for_order; 
drop exception ex_isexist; 
	
create exception ex_isexist 'The duplicating record';
	
create trigger new_book_for_order for table_order_list
active before insert 
declare variable ex integer;
as
begin
	execute procedure name_procedure_104(new.order_id, new.book_id, new.price, new.number)
	RETURNING_VALUES :ex;
	if( ex > 0 ) then 
		exeption ex_isexist;
end
^
set term ; ^