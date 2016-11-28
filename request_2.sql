select first 5 stock_id from table_order
group by stock_id
order by count(stock_id) desc