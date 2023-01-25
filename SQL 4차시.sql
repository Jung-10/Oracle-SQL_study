-- 4���� : �������� ���� �� ������ ����

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
from emp; -- ����� ������� ������

select ename, deptno, sal
from emp
order by sal; -- sal �����ͺ��� ��������

select ename, deptno, sal
from emp
order by sal desc; -- sal ū�ͺ��� ��������

select ename, deptno, sal * 2
from emp
order by sal * 2 desc; -- ���ĵ� ����

select ename, deptno, sal * 2
from emp
order by deptno desc, sal * 2; 
-- ���� 1�� ���� ������ deptno���� ��������
-- ������ deptno�� ���� sal*2�� ������������ ����

select ename, sal
from emp
order by hiredate; -- ����� �� ���� �͵� ���ı������� ����

select ename, sal, hiredate
from emp
order by hiredate;

select ename, sal, comm from emp
order by comm desc; -- ���������� null���� ���� ����
 
select ename, sal, comm from emp
order by comm; -- ���������� null���� ���� ���߿�

select ename, sal, comm from emp
order by comm nulls first; -- null���� ���� ������ ��������