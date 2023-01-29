-- 11���� : ���� ó������ ���� �� �⺻ ���� ����
select * from emp;

select * from dept;

select ename, dname
from emp, dept
order by ename;
-- ������ ���ϸ� �������� ����Ǿ� ������� ����.

select ename, dname
from emp, dept
where deptno = deptno
order by ename;
-- deptno�� ���� ����� deptno���� �� �� �����Ƿ� ���� �߻�.

select ename, dname
from emp, dept
where emp.deptno = dept.deptno
order by ename;

select *
from emp, dept
where emp.deptno = dept.deptno
order by ename;

select ename, sal from emp;
select * from salgrade;

select e.ename, e.sal, s.*
from emp e, salgrade s
where e.sal BETWEEN s.losal AND s.hisal;

select * from dept;
select * from locations;

select d.dname, l.city
from dept d , locations l
where d.loc_code = l.loc_code(+) ;

select d.dname, l.city
from dept d , locations l
where d.loc_code(+) = l.loc_code ;