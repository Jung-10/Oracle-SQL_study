-- 7���� : ��ȯ �Լ�

select '00700' ���1, 00700 ���2 from dual;

select '123' + 123 from dual;
        ����    ����    => ����
-- ��°��� �����ʿ� ���������� ���� ������   
-- ���ڿ� ���� ���ϴ°� �Ұ����ѵ� ���� �ȿ��� ���ڸ� ���ڷ� �ٲ㼭 ����� ����
-- Ÿ���� �ڵ����� �����ִ� �� : �Ͻ��� ��ȯ(�ڵ���ȯ, ���κ�ȯ)

select sysdate from dual;
alter session set nls_date_format = 'yyyy-mm-dd hh24:mi:ss';

select sysdate , TO_CHAR(sysdate, 'q-ddd') from dual;

select 1234567, TO_CHAR(1234567, '999,999,999')from dual;

select 1234567, TO_CHAR(1234567, '000,000,000')from dual;

select '12', to_date('12', 'yy') from dual;
-- to_date�Լ� ���� ��¥������ ������������� ���� ��Ҵ� �⺻������ �����.
 -- �⵵/�� -->sysdate�� �⵵/���� �⺻������
  -- ���� �ú��� --> 01�� 00��00��00��
  
-- ���� 25���� �����ϱ� ���� �ִ� ���� ����. �ٸ� ���ڴ� ������.
  
select to_number('00123') from dual;
select to_number('abc') from dual;
-- �ƽ�Ű�ڵ�� �ƽ�Ű ����ؼ� �ؾ���.