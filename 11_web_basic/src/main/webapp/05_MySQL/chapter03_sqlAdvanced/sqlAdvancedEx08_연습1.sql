/*
 * 24.04.01 TIME 14:02-14:15 15:21-15:35
 * TODAY 소감문
 * 일단 한 테이블의 전체를 조회하려고 하는데 JOIN 이 되어있어 * 만으로는 해결이 안됨
 * 테이블AS.* 으로 해결 가능
 * 그리고 나는 모든 문제마다 3개의 테이블이 연결되어 있는 JOIN을 다 써줬는데
 * 문제에서 원하는 JOIN만 써줘야 하는 디테일도 가져야 될 것 같다.
 * 그리고 SELECT의 모든 조회하는 값들의 이름을 AS로 표현해주는 것도 익숙해져야겠다.
 
 * */
USE SQL_ADVANCE_PRACTICE;
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


# 1) 렌트일이 5일 이상인 차량정보 조회하기
# 차량정보만 조회를 한다 ? 이렇게 하나 하나 다 써야하나? *을 이용하면 안되나? C.*
SELECT C.*
FROM  RENT R
JOIN  MEMBER M
ON    R.MEMBER_ID = M.MEMBER_ID
JOIN  CAR C
ON    R.CAR_CD = R.CAR_CD
WHERE R.RENT_PERIOD >= 5;
        
        
# 2) 렌트일이 5일 이상인 회원정보 조회하기
# 회원 정보만 조회를 한다 ? M.*
SELECT M.*
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  R.RENT_PERIOD >= 5;


# 3) '스타렉스'차량을 렌트한 회원정보를 조회하기
SELECT M.*
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  C.CAR_NM = '스타렉스';


# 4) 'k3' , 'k5' , 'k7'을 주문한 회원정보를 조회하기
SELECT M.*
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  CAR_NM IN('k3' , 'k5' , 'k7');
          
          
# 5) '아반떼' 차량의 평균 렌트일 조회하기
SELECT AVG(R.RENT_PERIOD)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  C.CAR_NM = '아반떼';

          
# 6) '유저1'의 렌트 횟수 조회하기
SELECT COUNT(*)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  M.MEMBER_NM = '유저1';
        
        
# 7) 남성의 평균 렌트일 조회하기
SELECT AVG(R.RENT_PERIOD)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  M.SEX = 'm';


# 8) 20대 여성의 렌트일 조회하기
SELECT R.RENT_PERIOD
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  M.SEX = 'f' AND M.AGE LIKE '2%';

         
# 9) 50000 ~ 100000 가격의 차량의 렌트횟수를 조회하기
# 렌트 횟수 COUNT(*)로 해도 되나?
SELECT COUNT(*)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  C.PRICE BETWEEN 50000 AND 100000;  

# 10) 100000이상 가격의 차량의 렌트횟수를 조회하기
SELECT COUNT(*)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  C.PRICE >= 100000;
         
         
# 11) 2020년에 등록된 차량의 렌트 횟수를 조회하기
SELECT COUNT(*)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  SUBSTRING(C.REG_DT , 1, 4) = '2020'; 
         

# 12) 기아 자동차의 렌트횟수를 조회하기
SELECT COUNT(*)
FROM   RENT R
JOIN   MEMBER M
ON     R.MEMBER_ID = M.MEMBER_ID
JOIN   CAR C
ON     R.CAR_CD = R.CAR_CD
WHERE  C.BRAND_NM = '기아';
      
 
# 13) '브랜드별로' 그룹화하여 렌트 횟수를 조회하고 렌트수가 많은 순서대로 정렬하기
SELECT   C.BRAND_NM ,
         COUNT(*)
FROM     RENT R
JOIN     MEMBER M
ON       R.MEMBER_ID = M.MEMBER_ID
JOIN     CAR C
ON       R.CAR_CD = R.CAR_CD
GROUP BY C.BRAND_NM
ORDER BY COUNT(*) DESC;
	
        
# 14) '차량이 등록된 연도별로' 그룹화하여 렌트 횟수를 조회하기
SELECT   SUBSTRING(C.REG_DT, 1, 4) ,
         COUNT(*)
FROM     RENT R
JOIN     MEMBER M
ON       R.MEMBER_ID = M.MEMBER_ID
JOIN     CAR C
ON       R.CAR_CD = R.CAR_CD
GROUP BY SUBSTRING(C.REG_DT, 1, 4);


# 15) '차량이 등록된 연도별로' 그룹화하고 '성별로' 그룹화하여  렌트 횟수를 조회하기
SELECT   SUBSTRING(C.REG_DT , 1 , 4)  ,
         M.SEX  ,
         COUNT(*)
FROM     RENT R
JOIN     MEMBER M
ON       R.MEMBER_ID = M.MEMBER_ID
JOIN     CAR C
ON       R.CAR_CD = R.CAR_CD
GROUP BY SUBSTRING(C.REG_DT , 1 , 4) , M.SEX;
       

# 16) '차량이 등록된 연도별로' 그룹화하고 '성별로' 그룹화하여 평균 렌트일을 조회하기
# 정답예시에서는 ROUND(AVG(R.RENT_PERIOD))로 표현 -> 소수점을 다 날려버리게 함
SELECT   SUBSTRING(C.REG_DT , 1 , 4) ,
         M.SEX ,
         AVG(R.RENT_PERIOD)
FROM     RENT R
JOIN     MEMBER M
ON       R.MEMBER_ID = M.MEMBER_ID
JOIN     CAR C
ON       R.CAR_CD = R.CAR_CD
GROUP BY SUBSTRING(C.REG_DT , 1 , 4) , M.SEX;
     

# 17) 가장 많이 렌트된 차량의 이름 , 렌트 횟수를 조회하기
# CAR_NM으로 그룹화 해야함
SELECT   C.CAR_NM ,
         COUNT(*)
FROM     RENT R
JOIN     MEMBER M
ON       R.MEMBER_ID = M.MEMBER_ID
JOIN     CAR C
ON       R.CAR_CD = R.CAR_CD
GROUP BY C.CAR_NM
ORDER BY COUNT(*) DESC 
LIMIT    1;



# 18) 가장 많이 렌트를 했던 회원의 아이디 , 렌트횟수를 조회하기
# MEMBER_ID로 그룹화 해줘야함
SELECT   M.MEMBER_ID ,
         COUNT(*)
FROM     RENT R
JOIN     MEMBER M
ON       R.MEMBER_ID = M.MEMBER_ID
JOIN     CAR C
ON       R.CAR_CD = R.CAR_CD
GROUP BY M.MEMBER_ID
ORDER BY COUNT(*) DESC
LIMIT 1;

