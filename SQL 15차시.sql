-- 15���� : INSERT �� UPDATE �� DELETE ���� ���

create table sawon
(id number(5),
name varchar2(20),
salary number(10) );

select * from sawon;
insert into sawon values (100, '�豸', 3300);
insert into sawon (name, id) values ('ȫ�浿', 200);

insert into sawon
select empno, ename, sal*2
from emp
where deptno = 10;

select * from sawon;

update sawon 
set salary = 5500, name = '��浿'
where id = 100;

select * from sawon;

-- sawon ���̺� 200 ��� �޿��� emp ���̺� 10�� �μ� �޿��հ谪���� �����ϱ�.

update sawon
set salary = (select sum(sal) from emp where deptno = 10)
where id = 200;

update sawon
set salary = null
where id = 100; -- delete�� �ƴ� update��

select * from sawon;

delete sawon where id = 100;