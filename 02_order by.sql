#ORDER BY

select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_name; -- order by 는 항상 끝에 위치한다

select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_name DESC; -- desc는 내림차순 정렬 ,오름차순은 정렬 디폴트 값

select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_price, menu_name;

-- 칼럼의 연산 결과로 정렬 가능
select menu_code, menu_name, menu_price
  from tbl_menu
order by menu_code * menu_price;

-- 별칭을 사용한 정렬 가능
select menu_code, menu_name, menu_price, menu_code * menu_price as `연산결과`
from tbl_menu
order by `연산결과`; #백팁으로 감싸야 된다 '' 는 상수로 인식한다

-- asc 는 오름차순 정렬( 명시하지 않아도 오름차순은 디폴트 값이다)
-- desc 를 명시적으로 작성해야 내림차순 정렬 된다
-- 오름차순(asc) 정렬시 null 이 맨 처음으로 나오는 것이 디폴트
-- is null 을 붙이면 오름차순 정렬시 null을 맨 끝으로 (is null asc 는 생략가능)

-- 내림 차순 정렬 시 null 이 맨 끝인 것이 디폴트
-- is null 을 붙이면 내림차순 desc 정렬 시 null 을 맨 처음으로 (is null desc 생략 불가)
select category_code, category_name, ref_category_code
  From tbl_category
order by ref_category_code IS NULL DESC, ref_category_code DESC;

