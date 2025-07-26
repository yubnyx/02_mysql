# Limit

select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_price DESC;

-- offset = 2, low count = 5
select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_price DESC
limit 2,5;

-- low count =7
select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_price DESC
limit 7;