-- 14차시 : 인라인뷰와 스칼라 서브쿼리

desc emp;
-- rowid(디스크 영역의 정확한 위치값을 알려줌, 유일한 번호값)
-- rownum(일련값, access한 순서대로 값이 부여됨)
select rowid, ename, sal from emp;
select rownum, ename, sal from emp;

select rownum, ename, sal from emp
where rownum = 1; -- 건수 제어 가능. 단, 1만 가능

select rownum, ename, sal from emp
where rownum = 5; -- 결과값이 안나옴.

-- 따라서 다른 숫자 뽑을 때는 작거나 같다로 해야함.
select rownum, ename, sal from emp
where rownum <= 5;

-- emp 사원 중 급여를 가장 많이 받는 5명만 조회
select ename, sal
from emp            -- 가장 먼저실행. 테이블 먼저 준비 시킴
where rownum < 6    -- 두번째로 여기가 실행됨.
order by sal desc;  -- 세번째로 where에 나온 데이터들이 내림차순 정렬됨.
-- 따라서 전체에서 급여 가장 많이 받는 5명이 조회된 것은 아님.


--where보다 먼저 실행되려면 from위치에 와야함.
--내 풀이
select ename, sal
from (select ename, sal from emp order by sal desc) P
where rownum < 6;

--정답
select *
from (select ename, sal
      from emp
      order by sal desc ) t --t라는 이름을 지정해준 것. 오라클에선 지정안해도 됨. mysql같은 곳은 해야함.
where rownum < 6;      


select ename, sal, deptno, (select dname from dept) al
from emp;
-- 여러 로우 나오면 안됨. 따라서 위에 에러뜸.

select ename, sal, deptno, (select * from dept where deptno = 10) al
from emp;
-- 여러 컬럼 나오면 안됨. 따라서 위에 에러떠서 조건 줘야함.

select ename, sal, deptno, (select dname from dept where deptno = 10) al
from emp;


select ename, sal, deptno, (select dname from dept where deptno = A.deptno) al
from emp A; -- 상호연관 서브쿼리 : 각 deptno에 맞는 dname 출력.

select deptno, dname, (select count(*) from emp where deptno=10) al
from dept;

select deptno, dname, (select count(*) from emp where deptno=D.deptno) al
from dept D;

select deptno, dname, (select count(*) from emp where deptno=D.deptno) al
from dept D
where 3 < (select count(*) from emp where deptno=D.deptno);
-- 부서원이 3명보다 많으면 출력.


select deptno, dname
from dept d
where exists ( select count(*)
               from emp
               where deptno = d.deptno);
               
select deptno, dname
from dept d
where exists ( select 1 -- 여기서 1은 의미없음. 그냥 있는지 없는지 판단하려고.
               from emp
               where deptno = d.deptno);          