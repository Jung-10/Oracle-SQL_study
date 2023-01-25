-- 4차시 : 복합조건 지정 및 데이터 정렬

select ename, sal, deptno, job
from emp
where deptno = 10 and sal > 2500;

select ename, sal, deptno
from emp
where sal < 1000 OR sal > 3000;

select ename, sal, deptno
from emp
where NOT sal between 1000 and 3000;

select ename, sal, deptno
from emp
where sal NOT between 1000 and 3000;

select ename, sal from emp
where NOT sal = 3000;

select ename, sal
from emp
where NOT ename like '%A%';

select ename, sal
from emp
where ename NOT like '%A%';

select ename, sal
from emp
where sal NOT in (1000, 2000, 3000, 5000);

select ename, comm
from emp
where NOT comm IS null;

select ename, comm
from emp
where comm IS NOT null;

select ename, sal, deptno, job
from emp
where deptno = 10 AND sal = 3000 OR job = 'CLERK';

select ename, sal, deptno, job
from emp
where deptno = 10 AND (sal = 3000 OR job = 'CLERK');

select ename, deptno, sal
from emp; -- 저장된 순서대로 꺼내옴

select ename, deptno, sal
from emp
order by sal; -- sal 작은것부터 오름차순

select ename, deptno, sal
from emp
order by sal desc; -- sal 큰것부터 내림차순

select ename, deptno, sal * 2
from emp
order by sal * 2 desc; -- 계산식도 가능

select ename, deptno, sal * 2
from emp
order by deptno desc, sal * 2; 
-- 먼저 1차 정렬 기준인 deptno부터 내림차순
-- 동일한 deptno에 따라 sal*2가 오름차순으로 정렬

select ename, sal
from emp
order by hiredate; -- 출력할 때 없는 것도 정렬기준으로 가능

select ename, sal, hiredate
from emp
order by hiredate;

select ename, sal, comm from emp
order by comm desc; -- 내림차순시 null값은 제일 먼저
 
select ename, sal, comm from emp
order by comm; -- 오름차순시 null값은 제일 나중에

select ename, sal, comm from emp
order by comm nulls first; -- null값만 먼저 앞으로 가져오기