-- 10���� : ������ �Լ�
select ename, sal, deptno,
RANK() OVER (order by sal desc) ���1
from emp;

select ename, sal, deptno,
RANK() OVER (order by sal desc) ���1,
dense_RANK() OVER (order by sal desc) ���2
from emp;

select ename, sal, deptno,
RANK() OVER (partition by deptno order by sal desc) ���1,
dense_RANK() OVER (partition by deptno order by sal desc) ���2
from emp;

select ename, sal, row_number() OVER (order by sal desc) ���1
from emp;

select ename, sal, row_number() OVER (order by sal desc, ename desc) ���1
from emp;

select ename, sal, ntile(3) over (order by sal desc)
from emp;

select ename, sal, sum(sal)
from emp;
-- ����ó�� �� ��� ������ ��. sum(sal)�� ���� �ϳ��� ename, sal�� ������.

select ename, sal, sum(sal) over()
from emp;
-- ����ó�� over()�� �߰��ؼ� ������ �Լ��� �׷��Լ��� �������.
-- �ٸ��� sum ���� �����.

select ename, sal, sum(sal) over(partition by deptno), deptno
from emp;
-- �μ����� ���ε���

select ename, sal, sum(sal) over(order by ename
                                ROWS between 1 preceding and 1 following) ���
from emp;

select ename, sal, sum(sal) over(order by ename
                                ROWS unbounded preceding)
from emp;
-- unbounded ����ϸ� �����ؼ� ���϶�� ��.