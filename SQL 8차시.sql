-- 8Â÷½Ã : ÀÏ¹Ý ÇÔ¼ö
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

select ename, sal, decode(sal, 3000, 'AÆÀ', 5000, 'BÆÀ', '±âÅ¸') from emp;


select ename, sal, CASE WHEN sal = 3000 THEN 'AÆÀ'
                        WHEN sal = 5000 THEN 'BÆÀ'
                        ELSE '±âÅ¸'
                   END
from emp;

select ename, sal, CASE WHEN sal < 3000 THEN 'AÆÀ'
                        WHEN sal < 5000 THEN 'BÆÀ'
                        ELSE '±âÅ¸'
                   END
from emp;

select ename, CASE WHEN ename like '%A%' Then 'AÆÀ'
                   ELSE 'BÆÀ'
              END
from emp;