use menudb;

#단일 칼럼 group by + count 함수

select category_code, count(*)
  from tbl_menu
group by category_code;

#단일 칼럼 group by + sum 함수
-- 그룹 함수는 묶여있는 것에 적용이 된다 묶여있는 거의 합계를 구한다
select category_code, sum(menu_price)
  from tbl_menu
group by category_code;

#단일 칼럼 group by + avg 함수
select category_code, avg(menu_price)
  from tbl_menu
group by category_code;

# 다중칼럼 group by + count
select category_code, menu_price, COUNT(*)
 From tbl_menu
group by category_code,menu_price
order by category_code,menu_price;

-- 각각의 카테고리에 따라서 메뉴가 다른 걸 알 수 있음 
-- 두개 이상에 대해서 같은 값으로 묶인것을 보여준다

#having
select category_code, COUNT(*)
 From tbl_menu
group by category_code
having category_code between 5 and 8;

#rollup

-- 컬럼 한개를 활용해 group by 후 roll up -> 총계
select category_code, sum(menu_price)
  from tbl_menu
group by category_code
with rollup;

-- 컬럼 두개를 활용해 group by 후 roll up -> 중간 합계 + 총계
-- 먼저 나온 컬럼의 총합을 구하고, 이후에 나오는 컬럼의 총합까지 구하는 방식
select category_code, menu_price, count(menu_price)
  from tbl_menu
group by category_code, menu_price
with rollup;

