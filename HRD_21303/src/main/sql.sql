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
			decode(grade, 'A', 'VIP', 'B', '�Ϲ�', 'C', '����'), city from  
			member_tbl_02where custno = 100001;
			
update member_tbl_02 set custno=?, custname=?, phone=?, address=?, joindate=?, grade=?, city=? where custno=?
update m
select custno, custname, phone, address, to_char(joindate, 'yyyy-mm-dd') from member_tbl_02
delete from MEMBER_TBL_02 where custno >= 100007
drop table member_tbl_02;
select * from MEMBER_TBL_02;
sysdate
insert into MEMBER_TBL_02 values (100001, '���ູ', '010-1111-2222', '���� ���빮�� �ְ�1��', '20151202', 'A', '01');
insert into MEMBER_TBL_02 values (100002, '���ູ', '010-1111-3333', '���� ���빮�� �ְ�2��', '20151206', 'B', '01');
insert into MEMBER_TBL_02 values (100003, '�����', '010-1111-4444', '�︪�� �︪�� ����1��', '20151001', 'B', '30');
insert into MEMBER_TBL_02 values (100004, '�ֻ��', '010-1111-5555', '�︪�� �︪�� ����2��', '20151113', 'A', '30');
insert into MEMBER_TBL_02 values (100005, '����ȭ', '010-1111-6666', '���ֵ� ���ֽ� �ܳ�����', '20151225', 'B', '60');
insert into MEMBER_TBL_02 values (100006, '������', '010-1111-7777', '���ֵ� ���ֽ� ��������', '20151211', 'C', '60');
A
SELECT COLUMN_NAME, table_name FROM all_tab_columns where table_name='MEMBER_TBL_02' gr

select COLUMN_NAME from ALL_TAB_COLUMNS where 