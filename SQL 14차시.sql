-- 14���� : �ζ��κ�� ��Į�� ��������

desc emp;
-- rowid(��ũ ������ ��Ȯ�� ��ġ���� �˷���, ������ ��ȣ��)
-- rownum(�Ϸð�, access�� ������� ���� �ο���)
select rowid, ename, sal from emp;
select rownum, ename, sal from emp;

select rownum, ename, sal from emp
where rownum = 1; -- �Ǽ� ���� ����. ��, 1�� ����

select rownum, ename, sal from emp
where rownum = 5; -- ������� �ȳ���.

-- ���� �ٸ� ���� ���� ���� �۰ų� ���ٷ� �ؾ���.
select rownum, ename, sal from emp
where rownum <= 5;

-- emp ��� �� �޿��� ���� ���� �޴� 5�� ��ȸ
select ename, sal
from emp            -- ���� ��������. ���̺� ���� �غ� ��Ŵ
where rownum < 6    -- �ι�°�� ���Ⱑ �����.
order by sal desc;  -- ����°�� where�� ���� �����͵��� �������� ���ĵ�.
-- ���� ��ü���� �޿� ���� ���� �޴� 5���� ��ȸ�� ���� �ƴ�.


--where���� ���� ����Ƿ��� from��ġ�� �;���.
--�� Ǯ��
select ename, sal
from (select ename, sal from emp order by sal desc) P
where rownum < 6;

--����
select *
from (select ename, sal
      from emp
      order by sal desc ) t --t��� �̸��� �������� ��. ����Ŭ���� �������ص� ��. mysql���� ���� �ؾ���.
where rownum < 6;      


select ename, sal, deptno, (select dname from dept) al
from emp;
-- ���� �ο� ������ �ȵ�. ���� ���� ������.

select ename, sal, deptno, (select * from dept where deptno = 10) al
from emp;
-- ���� �÷� ������ �ȵ�. ���� ���� �������� ���� �����.

select ename, sal, deptno, (select dname from dept where deptno = 10) al
from emp;


select ename, sal, deptno, (select dname from dept where deptno = A.deptno) al
from emp A; -- ��ȣ���� �������� : �� deptno�� �´� dname ���.

select deptno, dname, (select count(*) from emp where deptno=10) al
from dept;

select deptno, dname, (select count(*) from emp where deptno=D.deptno) al
from dept D;

select deptno, dname, (select count(*) from emp where deptno=D.deptno) al
from dept D
where 3 < (select count(*) from emp where deptno=D.deptno);
-- �μ����� 3���� ������ ���.


select deptno, dname
from dept d
where exists ( select count(*)
               from emp
               where deptno = d.deptno);
               
select deptno, dname
from dept d
where exists ( select 1 -- ���⼭ 1�� �ǹ̾���. �׳� �ִ��� ������ �Ǵ��Ϸ���.
               from emp
               where deptno = d.deptno);          