
/*

	# 서브 쿼리

	    - 서브 쿼리(Sub Query)란 하나의 SQL문 안에 포함되어 있는 또 다른 SQL문을 의미한다.
	    
	    - 서브쿼리는 메인쿼리가 서브쿼리를 포함하는 종속적인 관계이다.
	    
	    - 서브쿼리의 결과를 사용하여 보다 복잡한 데이터 검색 및 조작이 가능하다.
	    
	    - 서브쿼리는 메인쿼리의 컬럼을 모두 사용할 수 있지만 메인쿼리는 서브쿼리의 컬럼을 사용할 수 없다.
	    
	    - 서브쿼리를 잘못 사용하면 성능 저하를 초래할 수 있으므로 조인연산과 서브쿼리 방식을 상황에 맞게 사용하는 것이 중요하다.
	     
	    - 위치에 따라 사용되는 서브쿼리 예시
	    
			1) SELECT 절            > [스칼라서브쿼리 (Scalar subqueries)] : 하나의 컬럼처럼 사용하며 단수의 레코드만 사용 할 수 있다.
			2) FROM 절		 		> [인라인뷰 (inline views) 			 ] : 하나의  테이블처럼 사용하며 AS를 반드시 지정한다. 
			3) WHERE 절             > [중첩서브쿼리 (nested subqueries)  ] : 일반적인 서브쿼리 형태
			4) HAVING 절
			5) ORDER BY 절
			6) INSERT 문의 VALUES 절
			7) UPDATE 문의 SET 절

*/


USE SQL_ADVANCED;

CREATE TABLE CAR (
	CAR_CD 			VARCHAR(20),
	CAR_NM 			VARCHAR(20),
	PRICE 			INT,
	BRAND_NM 		VARCHAR(10),
	CATEGORY		VARCHAR(30),
	REG_DT			VARCHAR(20)
);

CREATE TABLE MEMBER (
	MEMBER_ID VARCHAR(20),
	MEMBER_NM VARCHAR(20),
	CONTACT   VARCHAR(30),
	SEX		  VARCHAR(1),
	AGE		  INT
);

CREATE TABLE RENT (
	RENT_CD 	VARCHAR(10),
	RENT_PERIOD INT,
	CAR_CD 		VARCHAR(10),
	MEMBER_ID	VARCHAR(10)
); 


INSERT INTO CAR VALUES ('car1', '아반떼',  60000, '현대' , '준중형' , '2020-01-01');
INSERT INTO CAR VALUES ('car2' , '아이오닉', 67500, '현대', '준중형' , '2020-02-02');
INSERT INTO CAR VALUES ('car4' , '그랜저',  115000, '현대', '준대형' , '2020-04-04');
INSERT INTO CAR VALUES ('car5' , '스타렉스',  155000, '현대', '대형' , '2020-05-05');
INSERT INTO CAR VALUES ('car6' , '제네시스', 175000, '현대', '중형' , '2020-06-06');
INSERT INTO CAR VALUES ('car7' , 'k3' , 68000, '기아', '준중형' , '2020-07-07');
INSERT INTO CAR VALUES ('car8' , '모닝',  39900, '기아', '소형' , '2020-08-08');
INSERT INTO CAR VALUES ('car9' , 'k5', 78000, '기아', '중형' , '2020-09-09');
INSERT INTO CAR VALUES ('car10' , 'k7', 115000, '기아', '준대형' , '2020-10-10');
INSERT INTO CAR VALUES ('car12', '레이', 65000, '기아', '소형' , '2021-01-01');
INSERT INTO CAR VALUES ('car13', '스포티지',  115000, '기아', '준중형' , '2021-02-02');
INSERT INTO CAR VALUES ('car14', '카니발', 180000, '기아', '대형' , '2021-03-03');
INSERT INTO CAR VALUES ('car15', 'SM5', 50000, '르노', '중형' , '2021-04-04');
INSERT INTO CAR VALUES ('car16', 'SM6', 73920, '르노', '중형' , '2021-05-05');
INSERT INTO CAR VALUES ('car17', 'QM6', 78000, '르노', '중형' , '2021-06-06');
INSERT INTO CAR VALUES ('car18', '렉스턴', 66000, '쌍용', '준대형' , '2021-07-07');
INSERT INTO CAR VALUES ('car19', '티볼리', 25500, '쌍용', '소형' , '2021-08-08');
INSERT INTO CAR VALUES ('car20', '코란도', 59700, '쌍용', '준중형' , '2021-09-09');

INSERT INTO MEMBER VALUES('user1' , '유저1' , '010-1111-1111' , 'f' , 25);
INSERT INTO MEMBER VALUES('user2' , '유저2' , '010-1111-2222' , 'm' , 21);
INSERT INTO MEMBER VALUES('user3' , '유저3' , '010-1111-3333' , 'f' , 30);
INSERT INTO MEMBER VALUES('user4' , '유저4' , '010-1111-4444' , 'm' , 33);
INSERT INTO MEMBER VALUES('user5' , '유저5' , '010-1111-5555' , 'f' , 27);
INSERT INTO MEMBER VALUES('user6' , '유저6' , '010-1111-6666' , 'm' , 32);
INSERT INTO MEMBER VALUES('user7' , '유저7' , '010-1111-7777' , 'f' , 29);
INSERT INTO MEMBER VALUES('user8' , '유저8' , '010-1111-8888' , 'm' , 38);
INSERT INTO MEMBER VALUES('user9' , '유저9' , '010-1111-9999' , 'f' , 22);
INSERT INTO MEMBER VALUES('user10' , '유저10' , '010-1111-0000' , 'm' , 35);

INSERT INTO RENT VALUES('rent1' , 3 , 'car1' , 'user1');
INSERT INTO RENT VALUES('rent2' , 1 , 'car1' , 'user9');
INSERT INTO RENT VALUES('rent3' , 5 , 'car19' , 'user3');
INSERT INTO RENT VALUES('rent4' , 1 , 'car2' , 'user5');
INSERT INTO RENT VALUES('rent5' , 2 , 'car15' , 'user6');
INSERT INTO RENT VALUES('rent6' , 1 , 'car2' , 'user7');
INSERT INTO RENT VALUES('rent7' , 1 , 'car5' , 'user2');
INSERT INTO RENT VALUES('rent8' , 1 , 'car7' , 'user8');
INSERT INTO RENT VALUES('rent9' , 1 , 'car3' , 'user10');
INSERT INTO RENT VALUES('rent10' , 2 , 'car9' , 'user1');
INSERT INTO RENT VALUES('rent11' , 3 , 'car20' , 'user1');
INSERT INTO RENT VALUES('rent12' ,  1 , 'car7' , 'user8');
INSERT INTO RENT VALUES('rent13' ,  5 , 'car6' , 'user2');
INSERT INTO RENT VALUES('rent14' , 1 , 'car8' , 'user6');
INSERT INTO RENT VALUES('rent15' ,  2 , 'car9' , 'user7');
INSERT INTO RENT VALUES('rent16' ,  3 , 'car1' , 'user3');
INSERT INTO RENT VALUES('rent17' , 1 , 'car12' , 'user1');
INSERT INTO RENT VALUES('rent18' , 7 , 'car12' , 'user3');
INSERT INTO RENT VALUES('rent19' , 1 , 'car4' , 'user3');
INSERT INTO RENT VALUES('rent20' , 2 , 'car16' , 'user5');

SELECT * FROM MEMBER;
SELECT * FROM CAR;
SELECT * FROM RENT;


# 1. 중첩 서브쿼리 예시
# 예시 1) 렌트카들의 평균 가격보다(SUB QUERY) / 높은 차량들의 정보를 조회하기.(JOIN으로 할 수 없는 경우)
SELECT *
FROM   CAR 
WHERE  
       PRICE >= (SELECT AVG(PRICE)
                 FROM   CAR);

# 예시 2) 렌트일이 5일이 넘어가는 차량정보 조회하기. (JOIN으로도 가능)
# 조회되는 ROW가 1개 이상인 경우 =가 아닌 IN 사용
SELECT CAR_CD
FROM   RENT
WHERE  RENT_PERIOD >= 5;

SELECT *
FROM   CAR
WHERE  CAR_CD IN (SELECT CAR_CD
                 FROM   RENT
                 WHERE  RENT_PERIOD >= 5);
                
# 예시 3) 기아 자동차의 평균 렌트일 조회하기.
SELECT ROUND(AVG(RENT_PERIOD)) AS AVG_RENT_PERIOD
FROM   RENT
WHERE  CAR_CD  IN (SELECT CAR_CD
                 FROM   CAR 
                 WHERE  BRAND_NM = '기아');

# 예시 4) 20대의 평균 렌트일 조회하기.
SELECT ROUND(AVG(RENT_PERIOD))
FROM   RENT 
WHERE  MEMBER_ID IN (SELECT MEMBER_ID
                     FROM   MEMBER                    
                     WHERE  AGE BETWEEN 20 AND 29) ;

# 예시 5) 가장 오랜 기간동안 렌트한 차량정보를 조회하기
# SUB QUERY 3번
SELECT *
FROM   CAR 
WHERE  CAR_CD = (SELECT CAR_CD
                  FROM   RENT 
                  WHERE  RENT_PERIOD = (SELECT MAX(RENT_PERIOD)
                                         FROM   RENT ) );

# JOIN사용
SELECT *
FROM   CAR C
JOIN   RENT R
ON     C.CAR_CD = R.CAR_CD 
WHERE  R.RENT_PERIOD = (SELECT MAX(RENT_PERIOD)
                        FROM   RENT );

#(참고)
# 예시 6) 자동차테이블의 백업 테이블을 생성하고 데이터를 마이그레이션하기.(INSERT & SELECT)
CREATE TABLE CAR_BAK(
	CAR_CD 			VARCHAR(20),
	CAR_NM 			VARCHAR(20),
	PRICE 			INT,
	BRAND_NM 		VARCHAR(10),
	CATEGORY		VARCHAR(100),
	REG_DT			VARCHAR(500)
);
# 원래 알던 INSERT : INSERT INTO TABLE명 VALUES();
INSERT INTO CAR_BAK (SELECT * FROM  CAR); 

SELECT * FROM CAR_BAK;

# 예시 7) 한번도 렌트되지 않은 자동차 정보의 등록날자를 '0000-00-00'으로 수정하기
# 한번도 RENT되지 않은 자동차? CAR_CD에 이름이 안올라가있는 친구 NOT IN
UPDATE CAR_BAK 
SET    REG_DT = '0000-00-00'
WHERE  CAR_CD NOT IN (SELECT CAR_CD
                      FROM   RENT ) ;

SELECT * FROM CAR_BAK ;
# 예시 8) 한번도 렌트되지 않은 자동차 정보를 삭제하기
DELETE FROM CAR_BAK 
WHERE CAR_CD NOT IN (SELECT CAR_CD
                     FROM   RENT ) ;

SELECT * FROM CAR_BAK ;

# 예시 9) 가장 비싼 차량3개의 가격을 10% 할인하기    (참고) 테이블명의 중첩될 경우 AS로 테이블명 지정해야 사용 가능
UPDATE CAR_BAK 
SET    PRICE = PRICE * 0.9 
WHERE  CAR_CD IN (SELECT TEMP.*
                  FROM   (SELECT CAR_CD 
                          FROM   CAR_BAK  
                          ORDER BY PRICE DESC
                          LIMIT 3) TEMP );

SELECT * FROM CAR_BAK ;
					
# 2. 스칼라 서브쿼리
# 예시 1) 'k5' 차량의 렌트가격에서 전체 차량의 평균 렌트가격을 뺀 가격을 조회하기

SELECT PRICE - (SELECT ROUND(AVG(PRICE)) FROM CAR) AS DEVIATION
FROM   CAR 
WHERE  CAR_NM = 'k5';



# 예시 2) 전체 차량의 렌트가격에서 전체 차량의 평균 렌트의 가격을 뺀 가격을 조회하기
SELECT CAR_NM                               AS CAR_NM ,
       PRICE                                AS PRICE ,
       (SELECT AVG(PRICE) FROM CAR)         AS AVG ,
       PRICE - (SELECT ROUND(AVG(PRICE)) FROM CAR) AS DEVIATION
FROM   CAR;


# 3. 인라인 뷰
# 예시 1) 렌트카들의 평균 가격보다 높은 차량들의 정보를 조회하기.
# 굳이 SUBQUERY 2개 이상 쓰는데 거기에 SELECT AS명.* FROM (SUB QURY들) AS명; 으로 만들어줌 -> 특히 ORACLE
SELECT T1.*
FROM   (SELECT *
        FROM   CAR 
        WHERE  PRICE >= (SELECT ROUND(AVG(PRICE))
                         FROM   CAR)) T1;
                        
# 예시 2) 렌트일이 5일이 넘어가는 차량정보 조회하기.
SELECT C1.*
FROM   (SELECT *
        FROM   CAR 
        WHERE  CAR_CD IN (SELECT CAR_CD
                          FROM   RENT
                          WHERE  RENT_PERIOD >= 5)) C1;

                 

