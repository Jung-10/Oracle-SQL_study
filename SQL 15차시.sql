-- 15차시 : INSERT · UPDATE · DELETE 구문 사용

create table sawon
(id number(5),
name varchar2(20),
salary number(10) );

select * from sawon;
insert into sawon values (100, '김구', 3300);
insert into sawon (name, id) values ('홍길동', 200);

insert into sawon
select empno, ename, sal*2
from emp
where deptno = 10;

select * from sawon;

update sawon 
set salary = 5500, name = '김길동'
where id = 100;

select * from sawon;

-- sawon 테이블 200 사원 급여를 emp 테이블 10번 부서 급여합계값으로 변경하기.

update sawon
set salary = (select sum(sal) from emp where deptno = 10)
where id = 200;

update sawon
set salary = null
where id = 100; -- delete가 아닌 update임

select * from sawon;

delete sawon where id = 100;