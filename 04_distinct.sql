# distinct

use menudb;

-- 단일 칼럼 distinct
select distinct category_code
  from tbl_menu
order by category_code;

-- Null 값 포함 단일 칼럼 distinct
select distinct ref_category_code
  from tbl_category;
  
-- 다중 칼럼 distinct
select distinct category_code,orderable_status
  from tbl_menu
order by category_code, orderable_status;


  
