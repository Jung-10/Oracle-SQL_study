-- 12차시 : 조인 문장 및 집합 연산자
select e.ename, d.dname
from emp e, dept d;

select e.ename, d.dname
from emp e cross join dept d;
-- 위의 두 결과가 같음.

select e.ename, d.dname
from emp e, dept d
where e.deptno = d.deptno; 
-- 조인하는 컬럼도 같고 조인 조건도 = 임. 이때, natural join 사용

select e.ename, d.dname
from emp e natural join dept d;

select e.ename, d.dname, e.deptno
from emp e, dept d
where e.deptno = d.deptno; 
-- deptno까지 보고싶을 때, select에서 emp 혹은 dept로 지정해줘야함

select e.ename, d.dname, deptno
from emp e natural join dept d;
-- select에서 deptno가 emp인지 dept인지 지정하면 에러나옴.
-- 따라서, deptno라고만 적어줘야함.

select e.ename, d.dname, deptno
from emp e join dept d using (deptno);
-- 부서번호만 가지고 조인하라고 지정가능.

select e.ename, d.dname, e.deptno
from emp e, dept d
where e.deptno = d.deptno and e.ename like '%A%';

select e.ename, d.dname, deptno
from emp e join dept d using (deptno)
where e.ename like '%A%';
-- 조인조건 이외에는 where절로 작성

select ename, sal from emp;
select * from salgrade;

select e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

select e.ename, e.sal, s.grade
from emp e join salgrade s
    on (e.sal between s.losal and s.hisal);
    

select * from dept;
select * from locations;

select d.dname, l.city
from dept d, locations l
where d.loc_code = l.loc_code(+);

select d.dname, l.city
from dept d left outer join locations l on (d.loc_code = l.loc_code);
-- 위의 두 결과 동일.

select d.dname, l.city
from locations l right outer join dept d on (d.loc_code=l.loc_code);
-- 위의 결과와 동일

select d.dname, l.city
from locations l full outer join dept d on (d.loc_code=l.loc_code);


select deptno from dept
intersect
select deptno from emp;
-- 공통인 것 찾음

select deptno from dept
minus
select deptno from emp;
-- dept에서 emp에서 나오는 것은 빼. == dept에만 나오는 것 출력

select deptno from dept
union
select deptno from emp;
-- dept와 emp에 나오는 것 출력

select deptno from dept
union all
select deptno from emp;
-- 겹치는 중복값 제거하지않고 붙여줌.