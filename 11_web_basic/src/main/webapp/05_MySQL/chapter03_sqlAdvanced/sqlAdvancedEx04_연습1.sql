/*
 * 24.03.30 time 00:21-00:37
 * TODAY 소감문
 * 2번이 나에게는 어렵게 느껴졌던 것 같다.
 * 가장 많은 커미션을 받고 있는 직책을 조회하시오.인데 가장 많은 커미션에 집중을 해서 
 * SELECT에 MAC(COMM)이라고 쓰는 실수를 저질렀다. 직책을 조회하는거였기 때문에 SELECT JOB이었던 것이다.
 * 근데 가장 많은 커미션을 받는 것을 ORDER BY COMM DESC LIMIT 1이라고 표현하는 방법을 내 머릿속에서
 * 완전히 지워버린 느낌이다. 그래서 MAX(COMM)에 너무 몰두했던 것 같다.
 * */
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
SELECT AVG(SALARY)
FROM   EMP_TB;

# 2) 가장 많은 커미션을 받고 있는 직책을 조회하시오.
# GROUP BY로 하면 NULL인것도 같이 조회가 됨 > GROUP BY 사용 X
 SELECT   JOB
 FROM     EMP_TB
 ORDER BY COMM DESC
 LIMIT 1;
   

# 3) MANAGER직책의 직원수를 조회하시오.
SELECT   COUNT(*)
FROM     EMP_TB
WHERE    JOB = 'MANAGER';
		
# 4) 부서번호 10 , 30번에 속한 직원수를 조회하시오.
SELECT   COUNT(*)
FROM     EMP_TB
WHERE    DEPT_NO IN(10,30);
		
# 5) SALARYESMAN직책의 평균 급여를 조회하시오.
SELECT AVG(SALARY)
FROM   EMP_TB 
WHERE  JOB = 'SALARYESMAN';
		
# 6) 1981년에 입사한 사원중 가장 많이 받은 급여를 조회하시오.
SELECT MAX(SALARY)
FROM   EMP_TB 
WHERE  HIRE_DATE BETWEEN '1981-01-01' AND '1981-12-31';
		
# 7) 직책으로 그룹화하여 평균급여를 조회하시오. (직책 오름차순)
SELECT   JOB, AVG(SALARY)
FROM     EMP_TB
GROUP BY JOB
ORDER BY JOB ASC;

# 8) 부서별로 그룹화하여 평균급여를 조회하시오. (부서 오름차순)
SELECT   DEPT_NO, AVG(SALARY)
FROM     EMP_TB 
GROUP BY DEPT_NO
ORDER BY DEPT_NO ASC;
		
# 9) 입사 연도별로 그룹화하여 평균급여를 조회하시오. (연도 내림차순)
SELECT   HIRE_DATE , AVG(SALARY)
FROM     EMP_TB 
GROUP BY HIRE_DATE
ORDER BY HIRE_DATE DESC;
		
# 10) 입사 연도별로 그룹화하여 커미션의 총합을 조회하시오. (연도 오름차순)
# NULL을 어떻게 처리하지
SELECT   HIRE_DATE , SUM(COMM)
FROM     EMP_TB 
GROUP BY HIRE_DATE
ORDER BY HIRE_DATE ASC;
		
# 11) 직책별로 최고로 높은 급여의 금액을 조회하시오. (급여 내림차순)
SELECT   JOB, MAX(SALARY)
FROM     EMP_TB 
GROUP BY JOB
ORDER BY MAX(SALARY) DESC;

# 12) 부서별로 최고로 높은 급여의 금액을 조회하되 급여가 3000 이상만 조회하시오. (급여 내림차순)
SELECT    DEPT_NO, MAX(SALARY)	
FROM      EMP_TB 
GROUP BY  DEPT_NO
HAVING    MAX(SALARY) >= 3000
ORDER BY  MAX(SALARY) DESC;
		
# 13) (부서 -> 직책)으로 그룹화하여 평균급여를 조회하되 급여가 2500원 이상만 조회하시오. (부서 , 직책 오름차순)
SELECT   DEPT_NO , JOB , AVG(SALARY)
FROM     EMP_TB 
GROUP BY DEPT_NO , JOB
HAVING   AVG(SALARY) >= 2500
ORDER BY DEPT_NO , JOB;
		
# 14) (입사연도 -> 부서)로 그룹화하여 평균급여를 조회하시오. (입사연도 , 부서 오름차순)
SELECT    HIRE_DATE , DEPT_NO , AVG(SALARY)
FROM      EMP_TB 
GROUP BY  HIRE_DATE, DEPT_NO
ORDER BY  HIRE_DATE , DEPT_NO;