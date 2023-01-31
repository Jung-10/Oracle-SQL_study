-- 16차시 : 오브젝트 이해

create table t1 as
select empno, ename, sal
from emp
where deptno = 20;

select * from t1;

select * from emp
where 1=2;
-- 데이터는 하나도 안보고싶다는 것. 컬럼은 다 가져오는데 자료는 안가져올 경우 사용.
-- 똑같은 구조로 테이블을 가져오는 경우에 사용함.

create table emp2 as
select * from emp
where 1=2;

select * from emp2;
desc emp2;

select * from t1;

alter table t1 add (address varchar2(20), tel varchar2(13));

alter table t1 drop column sal; --복구 안되니까 주의.



create table t2 as
select empno, ename, sal from emp;
-- 테이블로 만들면 과거 데이터로 저장됨.

create view v2 as
select empno, ename, sal from emp; 
--뷰로 만든 것은 실시간으로 바뀐 테이블을 반영함.
--사용자에게 보여주고 싶은것만 보여줄 수 있도록 제한할 수 있음.

select * from t2;
select * from v2;

insert into emp(empno, ename, sal) values (9999, 'test', 5500);
select * from emp;