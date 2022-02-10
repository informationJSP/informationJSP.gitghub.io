select to_date(sysdate, 'rrrr-mm-dd') from dual; 
create table member_tbl_02(
	custno number(6) NOT NULL Primary Key,
 	custname  varchar2(20),
 	phone varchar2(13),
 	address varchar2(60),
 	joindate date,
 	grade char(3),
 	city char(2)
)

select m.custno, custname, phone, m.address, to_char(joindate, 'yyyy-mm-dd'),
			decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원'), city from  
			member_tbl_02where custno = 100001;
			
update member_tbl_02 set custno=?, custname=?, phone=?, address=?, joindate=?, grade=?, city=? where custno=?
update m
select custno, custname, phone, address, to_char(joindate, 'yyyy-mm-dd') from member_tbl_02
delete from MEMBER_TBL_02 where custno >= 100007
drop table member_tbl_02;
select * from MEMBER_TBL_02;
sysdate
insert into MEMBER_TBL_02 values (100001, '김행복', '010-1111-2222', '서울 동대문구 휘경1동', '20151202', 'A', '01');
insert into MEMBER_TBL_02 values (100002, '이축복', '010-1111-3333', '서울 동대문구 휘경2동', '20151206', 'B', '01');
insert into MEMBER_TBL_02 values (100003, '장믿음', '010-1111-4444', '울릉군 울릉읍 독도1리', '20151001', 'B', '30');
insert into MEMBER_TBL_02 values (100004, '최사랑', '010-1111-5555', '울릉군 울릉읍 독도2리', '20151113', 'A', '30');
insert into MEMBER_TBL_02 values (100005, '진평화', '010-1111-6666', '제주도 제주시 외나무골', '20151225', 'B', '60');
insert into MEMBER_TBL_02 values (100006, '차공단', '010-1111-7777', '제주도 제주시 감나무골', '20151211', 'C', '60');
A
SELECT COLUMN_NAME, table_name FROM all_tab_columns where table_name='MEMBER_TBL_02' gr

select COLUMN_NAME from ALL_TAB_COLUMNS where 