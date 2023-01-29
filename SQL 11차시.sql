-- 11차시 : 조인 처리과정 이해 및 기본 조인 문장
select * from emp;

select * from dept;

select ename, dname
from emp, dept
order by ename;
-- 지정을 안하면 무작위로 연결되어 결과값이 나옴.

select ename, dname
from emp, dept
where deptno = deptno
order by ename;
-- deptno가 각각 어디의 deptno인지 알 수 없으므로 에러 발생.

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