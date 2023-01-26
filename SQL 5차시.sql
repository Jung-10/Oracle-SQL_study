-- 5차시 : 문자 · 숫자 함수

select ename, ENAME from emp;

select ename, lower(ENAME), initcap(ename), length(ename) from emp;

select ename, lower(ENAME), initcap(ename), length(ename)
from emp
where length(ename) = 4;

-- SUBSTR(후기, 1, 20)
-- SUBSTR(대상지정, 어디부터 뽑을지 위치지정, 개수)

select ename, substr(ename,1,2) from emp;

select ename, substr(ename,1,2), substr(ename,2,1) from emp;

select ename, LPAD(ename, 7, '*'), RPAD(ename, 7,'*') from emp;

select ename, LTRIM(ename, 'A') from emp;

select ename, RTRIM(ename, 'T') from emp;

select ename, TRIM('T' from ename) from emp;

-- replace(후기, '바보', '*?')
-- 후기에 '바보'라는 단어가 있으면 *?로 바꾸는 것

select ename, replace(ename, 'CO', '*?') from emp;

select ename, translate(ename, 'CO', '*?') from emp;
-- C는 *로 대체, O는 ?로 대체.
-- 한글자씩 따로 바꿀 수 있음