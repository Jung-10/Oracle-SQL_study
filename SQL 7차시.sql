-- 7차시 : 변환 함수

select '00700' 결과1, 00700 결과2 from dual;

select '123' + 123 from dual;
        문자    숫자    => 숫자
-- 출력값이 오른쪽에 맞춰있으면 숫자 데이터   
-- 문자와 숫자 더하는게 불가능한데 여기 안에서 문자를 숫자로 바꿔서 계산한 것임
-- 타입을 자동으로 맞춰주는 것 : 암시적 변환(자동변환, 내부변환)

select sysdate from dual;
alter session set nls_date_format = 'yyyy-mm-dd hh24:mi:ss';

select sysdate , TO_CHAR(sysdate, 'q-ddd') from dual;

select 1234567, TO_CHAR(1234567, '999,999,999')from dual;

select 1234567, TO_CHAR(1234567, '000,000,000')from dual;

select '12', to_date('12', 'yy') from dual;
-- to_date함수 사용시 날짜정보중 사용자지정하지 않은 요소는 기본값으로 적용됨.
 -- 년도/월 -->sysdate의 년도/월이 기본값으로
  -- 일자 시분초 --> 01일 00시00분00초
  
-- 월이 25월은 없으니까 실제 있는 값만 가능. 다른 숫자는 에러뜸.
  
select to_number('00123') from dual;
select to_number('abc') from dual;
-- 아스키코드는 아스키 사용해서 해야함.