-- 9차시 : 그룹 함수
select LOWER(ename) from emp;

select MIN(ename) from emp;

select count(*), count(mgr), count(comm) from emp;

select AVG(comm) 결과1, AVG(NVL(comm, 0)) 결과2
from emp;

select sum(sal), avg(sal), deptno, job
from emp
group by deptno, job;

select team_id, avg(height)
from player
--where avg(height) > 180
group by team_id
having avg(height) > 180
order by team_id;