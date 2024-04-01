/*
 * 24.04.01 TIME 15:37-16:03
 * TODAY 소감문
 * 일단 내일도 감을 잡기 위해 오늘은 7번까지만 풀었다. 이번에는 SELECT에서 조회하는 애들의 이름도
 * 붙여주려고 노력했고 문제에서 원하는 테이블끼리만 JOIN하도록 만들었던 것 같다. 
 * */
USE EMPLOYEES;

# 1) 사원번호 , 부서번호 , 근무 부서 이름을 가져오기. (DEPT_EMP , DEPARTMENTS)
SELECT E.EMP_NO    AS EMP_NO,
       E.DEPT_NO   AS DEPT_NO,
       D.DEPT_NAME AS DEPT_NAME
FROM   DEPT_EMP E
JOIN   DEPARTMENTS D
ON     E.DEPT_NO = D.DEPT_NO ;


# 2) 사원번호 , 이름(first,last) , 직함을 조회하기. (EMPLOYEES , TITLES)
 SELECT E.EMP_NO     AS EMP_NO ,
        E.FIRST_NAME AS FIRST_NAME ,
        E.LAST_NAME  AS LAST_NAME ,
        T.TITLE      AS TITLE
 FROM   EMPLOYEES E
 JOIN   TITLES T
 ON     E.EMP_NO = T.EMP_NO ;
    
    
# 3) 사원번호 , 이름(first_name,last_name) , 부서번호 , 부서이름을 조회하기. (EMPLOYEES , DEPT_EMP , DEPARTMENTS)
SELECT 
       E.EMP_NO      AS EMP_NO, 
       E.FIRST_NAME  AS FIRST_NAME, 
       E.LAST_NAME   AS LAST_NAME ,
       D.DEPT_NO     AS DEPT_NO, 
       D.DEPT_NAME   AS DEPT_NAME 
FROM   
       DEPT_EMP DE
       JOIN   EMPLOYEES E
       ON     E.EMP_NO = DE.EMP_NO 
       JOIN   DEPARTMENTS D
       ON     DE.DEPT_NO = D.DEPT_NO ;
			   

# 4) 사원번호 , 이름(first,last) , 부서 번호를 조회하기. (EMPLOYEES , DEPT_EMP)
SELECT E.EMP_NO     AS EMP_NO ,
       E.FIRST_NAME AS FIRST_NAME ,
       E.LAST_NAME  AS LAST_NAME ,
       DE.DEPT_NO   AS DEPT_NO
FROM   EMPLOYEES E
JOIN   DEPT_EMP DE
ON     E.EMP_NO = DE.EMP_NO ;


# 5) 사원번호 , 이름(first,last) , 부서 이름을 조회하기. (EMPLOYEES , DEPT_EMP , DEPARTMENTS)
 SELECT E.EMP_NO      AS EMP_NO ,
        E.FIRST_NAME  AS FIRST_NAME ,
        E.LAST_NAME   AS LAST_NAME ,
        D.DEPT_NAME   AS DEPT_NAME
 FROM  DEPT_EMP DE
 JOIN  EMPLOYEES E
 ON    DE.EMP_NO = E.EMP_NO 
 JOIN  DEPARTMENTS D
 ON    DE.DEPT_NO = D.DEPT_NO ;
 
      
      
# 6) '부서이름별로' 그룹화하여 부서이름 , 부서별 직원수를 조회하고 직원수가 많은 곳부터 조회하기. (DEPT_EMP , DEPARTMENTS)
SELECT   
         D.DEPT_NAME AS DEPT_NAME ,
         COUNT(*)    AS DEPT_CNT
FROM     
         DEPT_EMP DE 
         JOIN     DEPARTMENTS D
         ON       DE.DEPT_NO = D.DEPT_NO 
GROUP BY 
         D.DEPT_NAME 
ORDER BY 
         DEPT_CNT DESC;

		
# 7) '부서이름별로' 그룹화하고 '성별로' 그룹화하여 부서이름 , 성별 , 직원 수를 조회하기. (DEPT_EMP , DEPARTMENTS , EMPLOYEES)
 SELECT   
          D.DEPT_NAME AS DEPT_NAME ,
          E.GENDER    AS GENDER ,
          COUNT(*)    AS EMP_CNT
 FROM     
          DEPT_EMP DE
 		  JOIN     EMPLOYEES E
            ON       DE.EMP_NO = E.EMP_NO 
          JOIN     DEPARTMENTS D
            ON       DE.DEPT_NO = D.DEPT_NO
 GROUP BY 
          D.DEPT_NAME ,
          E.GENDER ;
     		
		
# 8) '부서번호별로' 그룹화하여 급여의 평균을 구하기 (EMPLOYEES , DEPT_EMP , SALARIES)

		
		
# 9) '직함별로' 그룹화하여 급여의 평균을 구하기 (TITLES , SALARIES , EMPLOYEES)

		
		
# 10) 관리자의 부서번호 , 사원번호 , 이름 조회하기 (DEPT_MANAGER ,  EMPLOYEES) 


						  
# 11) 관리자의 부서번호 , 부서이름 , 사원번호 , 이름 조회하기 (부서이름을a~z로 정렬) (DEPT_MANAGER , EMPLOYEES , DEPARTMENTS)

          
				              
# 12) '부서관리자 사원번호' 그룹화하여 관리자 급여의 평균을 구하기 (DEPT_MANAGER , EMPLOYEES , SALARIES)

				

# 13) '부서번호별로' 그룹화하고 '직책별로' 그룹화하여 부서이름과 직원수를 조회하기 (TITLES , EMPLOYEES , DEPT_EMP)


				
# 14) '직책별로' 그룹화하고 '부서이름별로' 그룹화하여 부서이름과 직원수를 조회하기 (TITLES , EMPLOYEES , DEPT_EMP , DEPARTMENTS)


		