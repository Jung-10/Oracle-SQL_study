-- 13차시 : 서브쿼리

--emp 사원 중 BLAKE보다 급여 많이 받는 사원조회
--1) BLAKE가 얼마 받는지 확인
select sal from emp
where ename = 'BLAKE';

--2)
select ename, sal
from emp
where sal > 2850;

--서브쿼리 이용
select ename, sal
from emp
where sal > (select sal from emp
             where ename = 'BLAKE');

--player 선수 중에서 서동명 선수와 포지션이 같은 선수는?
select player_name, height, position
from player
where position = (select position from player
                  where player_name='서동명');
                  
--player 선수 중에서 박동우 선수와 포지션이 같은 선수는?
select player_name, height, position
from player
where position = (select position from player
                  where player_name='박동우');
-- 위의 결과는 에러가 뜸 => 동명이인이 있어서 포지션 결과가 두개가 나옴.

select player_name, height, position
from player
where position in (select position from player
                  where player_name='박동우');
-- 여러개 결과 비교시 in사용


--emp 테이블 30번 부서에 소속된 모든 사원보다 급여를 더 많이 받는 사원조회

select ename, sal, deptno
from emp
where sal > ( select sal from emp
              where deptno = 30) ;
              
--결과 여러개라서 에러뜸. 

select ename, sal, deptno
from emp
where sal > ( select max(sal) from emp
              where deptno = 30) ;
              
select ename, sal, deptno
from emp
where sal > ALL ( select sal from emp
              where deptno = 30) ;
              
              
select ename, sal, deptno
from emp
where sal > ANY ( select sal from emp
              where deptno = 30) ;              
              
select ename, sal, deptno
from emp
where sal > ( select min(sal) from emp
              where deptno = 30) ; 
              
select team_id, player_name, position, height
from player
where team_id in (select team_id from player
                  where plyer_name in ('샤샤', '이운재'))
    and position in (select position from player
                     where player_name in ('샤샤', '이운재'));
                     
                     
select team_id, player_name, position, height
from player
where (team_id, position) in (select team_id, position from player
                  where player_name in ('샤샤', '이운재'));     
-- 이때는 team_id와 position이 동시에 같은걸 결과로 출력하는 것. 