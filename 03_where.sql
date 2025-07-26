# where
-- 1)비교 연산자

select menu_name, menu_price, orderable_status
  from tbl_menu
where orderable_status = 'Y';

select menu_name, menu_price, orderable_status
  from tbl_menu
where orderable_status <> 'Y'; # 같지 않다 != 혹은 <> 으로 작성

select menu_name, menu_price, orderable_status
  from tbl_menu
where menu_price <= 10000;

-- select menu_name, menu_price, orderable_status
--   from tbl_menu
-- where 10000 < menu_price <= 20000;


-- 2) AND
select menu_name, menu_price, orderable_status
  from tbl_menu
where 10000 < menu_price
and menu_price <= 20000;

-- 3) OR
select menu_name, menu_price, orderable_status
  from tbl_menu
where menu_price > 30000
or menu_name = '열무김치라떼';



-- 4) BETWEEN

select menu_name, menu_price, orderable_status
  from tbl_menu
where menu_price between 10000 and 20000;

select menu_name, menu_price, orderable_status
  from tbl_menu
where menu_price not between 10000 and 20000;

-- 5) LIKE

select menu_name, menu_price, orderable_status
  from tbl_menu
where menu_name like '%김치%'; # 메뉴 네임에서 김치를 포함할 때 
# % 는 뭐가 붙던지 라는 뜻 '%김%치%' 도가능

select menu_name, menu_price, orderable_status
  from tbl_menu
where menu_name not like '%김치%';

-- 6) IN
select menu_name, menu_price, orderable_status , category_code
  from tbl_menu
where category_code = 4
or category_code = 5
or category_code = 6;

select menu_name, menu_price, orderable_status , category_code
  from tbl_menu
where category_code in (4,5,6);

select menu_name, menu_price, orderable_status , category_code
  from tbl_menu
where category_code not in (4,5,6);


-- 7) IS NULL

select category_code, category_name, ref_category_code
  from tbl_category
where ref_category_code is null;

select category_code, category_name, ref_category_code
  from tbl_category
where ref_category_code is not null;