-- 16���� : ������Ʈ ����

create table t1 as
select empno, ename, sal
from emp
where deptno = 20;

select * from t1;

select * from emp
where 1=2;
-- �����ʹ� �ϳ��� �Ⱥ���ʹٴ� ��. �÷��� �� �������µ� �ڷ�� �Ȱ����� ��� ���.
-- �Ȱ��� ������ ���̺��� �������� ��쿡 �����.

create table emp2 as
select * from emp
where 1=2;

select * from emp2;
desc emp2;

select * from t1;

alter table t1 add (address varchar2(20), tel varchar2(13));

alter table t1 drop column sal; --���� �ȵǴϱ� ����.



create table t2 as
select empno, ename, sal from emp;
-- ���̺�� ����� ���� �����ͷ� �����.

create view v2 as
select empno, ename, sal from emp; 
--��� ���� ���� �ǽð����� �ٲ� ���̺��� �ݿ���.
--����ڿ��� �����ְ� �����͸� ������ �� �ֵ��� ������ �� ����.

select * from t2;
select * from v2;

insert into emp(empno, ename, sal) values (9999, 'test', 5500);
select * from emp;