-- 10차시 : 윈도우 함수
select ename, sal, deptno,
RANK() OVER (order by sal desc) 등수1
from emp;

select ename, sal, deptno,
RANK() OVER (order by sal desc) 등수1,
dense_RANK() OVER (order by sal desc) 등수2
from emp;

select ename, sal, deptno,
RANK() OVER (partition by deptno order by sal desc) 등수1,
dense_RANK() OVER (partition by deptno order by sal desc) 등수2
from emp;

select ename, sal, row_number() OVER (order by sal desc) 결과1
from emp;

select ename, sal, row_number() OVER (order by sal desc, ename desc) 결과1
from emp;

select ename, sal, ntile(3) over (order by sal desc)
from emp;

select ename, sal, sum(sal)
from emp;
-- 위에처럼 할 경우 에러가 뜸. sum(sal)의 값이 하나라서 ename, sal은 여러개.

select ename, sal, sum(sal) over()
from emp;
-- 위에처럼 over()을 추가해서 단일행 함수와 그룹함수를 섞어놓음.
-- 줄마다 sum 값을 찍어줌.

select ename, sal, sum(sal) over(partition by deptno), deptno
from emp;
-- 부서별로 따로따로

select ename, sal, sum(sal) over(order by ename
                                ROWS between 1 preceding and 1 following) 결과
from emp;

select ename, sal, sum(sal) over(order by ename
                                ROWS unbounded preceding)
from emp;
-- unbounded 사용하면 누적해서 더하라는 것.