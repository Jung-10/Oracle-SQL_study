-- 8���� : �Ϲ� �Լ�
select ename, sal, comm, comm + 500
from emp;

select ename, sal, comm, NVL(comm, -200)
from emp;

select ename, sal, comm, sal + comm
from emp;

select ename, sal, comm, sal + NVL(comm, 0)
from emp;

select ename, comm, NVL2(comm, comm + 700, 100)
from emp;

select ename, sal, job, nullif(job, 'SALESMAN') from emp;

select ename, sal, comm, coalesce(comm, sal, 1500) from emp;

select ename, sal, decode(sal, 3000, 'A��', 5000, 'B��', '��Ÿ') from emp;


select ename, sal, CASE WHEN sal = 3000 THEN 'A��'
                        WHEN sal = 5000 THEN 'B��'
                        ELSE '��Ÿ'
                   END
from emp;

select ename, sal, CASE WHEN sal < 3000 THEN 'A��'
                        WHEN sal < 5000 THEN 'B��'
                        ELSE '��Ÿ'
                   END
from emp;

select ename, CASE WHEN ename like '%A%' Then 'A��'
                   ELSE 'B��'
              END
from emp;