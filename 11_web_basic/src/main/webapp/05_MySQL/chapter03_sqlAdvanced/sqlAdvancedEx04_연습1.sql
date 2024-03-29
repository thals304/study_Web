USE SQL_ADVANCED_PRACTICE;

CREATE TABLE EMP_TB(

	EMP_NO    INT,			# 사번
	NAME      VARCHAR(20),	# 이름
	JOB       VARCHAR(20),	# 직책
	HIRE_DATE VARCHAR(30),	# 입사일자
	SALARY    INT,			# 급여	
	COMM      INT,			# 커미션
	DEPT_NO   INT			# 부서번호

);


INSERT INTO EMP_TB VALUES (7369 , 'SMITH' , 'CLERK' , '1980-12-17' , 800 , NULL , 20);
INSERT INTO EMP_TB VALUES (7499 , 'ALLEN' , 'SALARYESMAN' , '1981-02-20' , 1600 , 300 , 30);
INSERT INTO EMP_TB VALUES (7521 , 'WARD' , 'SALARYESMAN' , '1981-02-22' , 1250 , 500 , 30);
INSERT INTO EMP_TB VALUES (7566 , 'JONES' , 'MANAGER' , '1981-04-02' , 2975 , NULL , 20);
INSERT INTO EMP_TB VALUES (7654 , 'MARTIN' , 'SALARYESMAN' , '1981-09-28' , 1250 , 1400 , 30);
INSERT INTO EMP_TB VALUES (7698 , 'BLAKE' , 'MANAGER' , '1981-05-01' , 2850 , NULL , 30);
INSERT INTO EMP_TB VALUES (7782 , 'CLARK' , 'MANAGER' , '1981-06-09' , 2450 , NULL , 10);
INSERT INTO EMP_TB VALUES (7788 , 'SCOTT' , 'ANALYST' , '1987-07-13' , 3000 , NULL , 20);
INSERT INTO EMP_TB VALUES (7839 , 'KING' , 'PRESIDENT' , '1981-11-17' , 5000 , NULL , 10);
INSERT INTO EMP_TB VALUES (7844 , 'TURNER' , 'SALARYESMAN' , '1981-09-08', 1500 , 0 , 30);
INSERT INTO EMP_TB VALUES (7876 , 'ADAMS' , 'CLERK' , '1987-07-13' , 1100 , NULL , 20);
INSERT INTO EMP_TB VALUES (7900 , 'JAMES' , 'CLERK' , '1981-12-03' , 950 , NULL , 30);
INSERT INTO EMP_TB VALUES (7902 , 'FORD' , 'ANALYST' , '1981-12-03' , 3000,NULL , 20);
INSERT INTO EMP_TB VALUES (7934 , 'MILLER' , 'CLERK' , '1982-01-23' , 1300 , NULL , 10);


# 1) 월급의 평균을 조회하시오.


# 2) 가장 많은 커미션을 받고 있는 직책을 조회하시오.
        
        
# 3) MANAGER직책의 직원수를 조회하시오.

		
# 4) 부서번호 10 , 30번에 속한 직원수를 조회하시오.
		
		
# 5) SALARYESMAN직책의 평균 급여를 조회하시오.
		
		
# 6) 1981년에 입사한 사원중 가장 많이 받은 급여를 조회하시오.

		
# 7) 직책으로 그룹화하여 평균급여를 조회하시오. (직책 오름차순)


# 8) 부서별로 그룹화하여 평균급여를 조회하시오. (부서 오름차순)

		
# 9) 입사 연도별로 그룹화하여 평균급여를 조회하시오. (연도 내림차순)
		
		
# 10) 입사 연도별로 그룹화하여 커미션의 총합을 조회하시오. (연도 오름차순)
		
		
# 11) 직책별로 최고로 높은 급여의 금액을 조회하시오. (급여 내림차순)
		

# 12) 부서별로 최고로 높은 급여의 금액을 조회하되 급여가 3000 이상만 조회하시오. (급여 내림차순)
		
		
# 13) (부서 -> 직책)으로 그룹화하여 평균급여를 조회하되 급여가 2500원 이상만 조회하시오. (부서 , 직책 오름차순)

		
# 14) (입사연도 -> 부서)로 그룹화하여 평균급여를 조회하시오. (입사연도 , 부서 오름차순)
		