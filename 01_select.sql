# select from 
select menu_name from tbl_menu; # 해석 순서는 from 이 1 번이고 select가 2번이다 

select menu_code, menu_name, menu_price, category_code, orderable_status
  from tbl_menu; #tbl_menu에 있는 모든 메뉴를 가지고 오라
  
  select * # *을 쓰면 명확하게 파악할 수 없기 때문에 지양되는 방식임
    from tbl_menu; #from 뒤에는 셀렉 명 select뒤에는 컬럼명, select 뒤엔 연산자도 사용 가능
    
    select 12 + 17; -- From DUAL (oracle)
	select 12 - 17;
	select 12 * 17;
	select 12 / 17;
	select 12 % 17;