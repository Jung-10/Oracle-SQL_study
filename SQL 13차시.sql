-- 13���� : ��������

--emp ��� �� BLAKE���� �޿� ���� �޴� �����ȸ
--1) BLAKE�� �� �޴��� Ȯ��
select sal from emp
where ename = 'BLAKE';

--2)
select ename, sal
from emp
where sal > 2850;

--�������� �̿�
select ename, sal
from emp
where sal > (select sal from emp
             where ename = 'BLAKE');

--player ���� �߿��� ������ ������ �������� ���� ������?
select player_name, height, position
from player
where position = (select position from player
                  where player_name='������');
                  
--player ���� �߿��� �ڵ��� ������ �������� ���� ������?
select player_name, height, position
from player
where position = (select position from player
                  where player_name='�ڵ���');
-- ���� ����� ������ �� => ���������� �־ ������ ����� �ΰ��� ����.

select player_name, height, position
from player
where position in (select position from player
                  where player_name='�ڵ���');
-- ������ ��� �񱳽� in���


--emp ���̺� 30�� �μ��� �Ҽӵ� ��� ������� �޿��� �� ���� �޴� �����ȸ

select ename, sal, deptno
from emp
where sal > ( select sal from emp
              where deptno = 30) ;
              
--��� �������� ������. 

select ename, sal, deptno
from emp
where sal > ( select max(sal) from emp
              where deptno = 30) ;
              
select ename, sal, deptno
from emp
where sal > ALL ( select sal from emp
              where deptno = 30) ;
              
              
select ename, sal, deptno
from emp
where sal > ANY ( select sal from emp
              where deptno = 30) ;              
              
select ename, sal, deptno
from emp
where sal > ( select min(sal) from emp
              where deptno = 30) ; 
              
select team_id, player_name, position, height
from player
where team_id in (select team_id from player
                  where plyer_name in ('����', '�̿���'))
    and position in (select position from player
                     where player_name in ('����', '�̿���'));
                     
                     
select team_id, player_name, position, height
from player
where (team_id, position) in (select team_id, position from player
                  where player_name in ('����', '�̿���'));     
-- �̶��� team_id�� position�� ���ÿ� ������ ����� ����ϴ� ��. 