-- 3차시 : 컬럼(Column) 및 로우(Row)의 선택

select * from emp;

select * from player;

select * from emp;

select ename, job from emp;

select ename, ENAME from emp;

select ename, sal, sal * 3 from emp;

select ename 이름, sal as 급여, sal * 3 + 500 "Result" from emp;

select ename || job 결과 from emp;

select deptno from emp;
select distinct deptno from emp;

select deptno, job from emp;
select DISTINCT deptno, job from emp;

select ename, sal, deptno
from emp
where sal != 3000;

select ename, sal, deptno
from emp
where ename = 'SCOTT';

select ename, sal from emp
where sal between 1000 and 3000;

select ename, sal from emp
where sal in (1000, 2000, 3000);

select ename, sal from emp
where ename Like '__A%';

select ename, sal, comm from emp;

select ename, sal, comm, comm + 500 from emp
where comm is null;