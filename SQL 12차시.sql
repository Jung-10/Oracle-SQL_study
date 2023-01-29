-- 12���� : ���� ���� �� ���� ������
select e.ename, d.dname
from emp e, dept d;

select e.ename, d.dname
from emp e cross join dept d;
-- ���� �� ����� ����.

select e.ename, d.dname
from emp e, dept d
where e.deptno = d.deptno; 
-- �����ϴ� �÷��� ���� ���� ���ǵ� = ��. �̶�, natural join ���

select e.ename, d.dname
from emp e natural join dept d;

select e.ename, d.dname, e.deptno
from emp e, dept d
where e.deptno = d.deptno; 
-- deptno���� ������� ��, select���� emp Ȥ�� dept�� �����������

select e.ename, d.dname, deptno
from emp e natural join dept d;
-- select���� deptno�� emp���� dept���� �����ϸ� ��������.
-- ����, deptno��� ���������.

select e.ename, d.dname, deptno
from emp e join dept d using (deptno);
-- �μ���ȣ�� ������ �����϶�� ��������.

select e.ename, d.dname, e.deptno
from emp e, dept d
where e.deptno = d.deptno and e.ename like '%A%';

select e.ename, d.dname, deptno
from emp e join dept d using (deptno)
where e.ename like '%A%';
-- �������� �̿ܿ��� where���� �ۼ�

select ename, sal from emp;
select * from salgrade;

select e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

select e.ename, e.sal, s.grade
from emp e join salgrade s
    on (e.sal between s.losal and s.hisal);
    

select * from dept;
select * from locations;

select d.dname, l.city
from dept d, locations l
where d.loc_code = l.loc_code(+);

select d.dname, l.city
from dept d left outer join locations l on (d.loc_code = l.loc_code);
-- ���� �� ��� ����.

select d.dname, l.city
from locations l right outer join dept d on (d.loc_code=l.loc_code);
-- ���� ����� ����

select d.dname, l.city
from locations l full outer join dept d on (d.loc_code=l.loc_code);


select deptno from dept
intersect
select deptno from emp;
-- ������ �� ã��

select deptno from dept
minus
select deptno from emp;
-- dept���� emp���� ������ ���� ��. == dept���� ������ �� ���

select deptno from dept
union
select deptno from emp;
-- dept�� emp�� ������ �� ���

select deptno from dept
union all
select deptno from emp;
-- ��ġ�� �ߺ��� ���������ʰ� �ٿ���.