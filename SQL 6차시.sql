-- 6차시 : 날짜 연산 및 날짜 함수
select sysdate from dual;

alter session set nls_date_format='yyyy-mm-dd:hh24:mi:ss';

select sysdate, sysdate + 10 from dual;
select sysdate, sysdate - 100 from dual;
select sysdate, sysdate + 1/24 from dual;
select sysdate, sysdate + 1/24/60 from dual;
select sysdate, sysdate + 1/24/60/60 from dual;

select ename, hiredate, sysdate - hiredate from emp;
-- 두 날짜 더하는 것은 오류뜸.

select sysdate, sysdate + 300 from dual;
select sysdate, ADD_MONTHS(sysdate, 10) from dual;
select sysdate, sysdate + 365*10 from dual;
select sysdate, add_months(sysdate, 12*10) from dual;
select ename, hiredate, months_between(sysdate, hiredate) from emp;

select ename, hiredate, TRUNC(months_between(sysdate, hiredate)) from emp;

select ename, hiredate, TRUNC(months_between(sysdate, hiredate)/12) from emp;

select LAST_DAY(sysdate) from dual;

select sysdate, TRUNC(sysdate), TRUNC(sysdate, 'mm') from dual;


select sysdate, extract (day from sysdate) from dual;

select ename, hiredate, hiredate + interval '60' year
from emp;

select sysdate, sysdate + interval '2:3' minute to second
from dual;