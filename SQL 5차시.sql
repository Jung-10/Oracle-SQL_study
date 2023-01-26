-- 5���� : ���� �� ���� �Լ�

select ename, ENAME from emp;

select ename, lower(ENAME), initcap(ename), length(ename) from emp;

select ename, lower(ENAME), initcap(ename), length(ename)
from emp
where length(ename) = 4;

-- SUBSTR(�ı�, 1, 20)
-- SUBSTR(�������, ������ ������ ��ġ����, ����)

select ename, substr(ename,1,2) from emp;

select ename, substr(ename,1,2), substr(ename,2,1) from emp;

select ename, LPAD(ename, 7, '*'), RPAD(ename, 7,'*') from emp;

select ename, LTRIM(ename, 'A') from emp;

select ename, RTRIM(ename, 'T') from emp;

select ename, TRIM('T' from ename) from emp;

-- replace(�ı�, '�ٺ�', '*?')
-- �ı⿡ '�ٺ�'��� �ܾ ������ *?�� �ٲٴ� ��

select ename, replace(ename, 'CO', '*?') from emp;

select ename, translate(ename, 'CO', '*?') from emp;
-- C�� *�� ��ü, O�� ?�� ��ü.
-- �ѱ��ھ� ���� �ٲ� �� ����