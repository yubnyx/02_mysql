# DML

select menu_code,menu_name, menu_price, category_code, orderable_status
  from tbl_menu;
  
#insert 
-- insert into 테이블명 values (칼럼순으로, 삽입할, 데이터, 나열,...)
insert into tbl_menu values (null, '곰탕',9500,6,'Y');

-- insert into 테이블 명( 컬럼명 1, 컬럼명 2, 컬럼명3,...)
-- values (데이터 1, 데이터2, 데이터3,...)

-- 순서 바꿔도 잘 된다
insert into tbl_menu(menu_code, menu_name,menu_price,orderable_status,category_code)
values (null, '차돌짬뽕',15000,'Y',6);

-- 메뉴코드를 입력하지 않고 하는 방법
insert into tbl_menu (menu_name, menu_price, category_code, orderable_status)
values('민잔라떼',4500,7,'Y');

-- 멀티 insert

insert into tbl_menu
values
(null,'유자민트티',6900, 12,'Y'),
(null, '프랜치프라이' , 7500, 7,'Y'),
(null,'훈제오리샐러드',9500,7,'Y');

-- insert into tbl_menu values(100,'1번 음식',100 ,10,'Y'); 

#update
-- update 테이블명
--   set 컬럼명1 = 수정할 데이터,
--       컬럼명2 = 수정할 데이터,
--     ...
-- [ where 수정 대상 데이터 조건 ];

update tbl_menu
  set menu_name = '100번이었던 음식'
     , menu_price = 10000
where menu_code = 100;
-- safe update moderk 설정되어있으면 where 절을 빼면 수정되지 않는다

-- delete
-- delete from 테이블명 [where 삭제 조건];

delete
  from tbl_menu
where menu_code = 101;

delete 
  from tbl_menu
limit 3;

delete
  from tbl_menu
order by menu_code desc
limit 3;

delete
  from tbl_menu
where menu_code = 20;

# replace
-- replace 는 중복값에 대해서는 데이터를 덮어쓰고 , 중복값이 없다면 INSERT함
-- into 키워드는
replace into tbl_menu values(100,'100번 음식 replace', 100,10,'Y');
replace tbl_menu values(120,'없는 메뉴 replace',11111,8,'Y');

