# 24.03.27 TIME 14:18-14:35  
# TODAY 소감문
# 예제가 엄청 많은데 AND , OR의 구분을 잘해야 될 것 같고 , 아직 ㄱ ~ ㄴ 순으로 나오게 하는 것 해결 못했고
# 17부터는 더 공부하고 풀어야 할 예제 인 것 같다.
/*  24.03.28 TIME 14:03-14:10
 * 	TODAY 소감문
 *  주어진 문장을 INSERT와 UPDATE 중 어떤 것으로 풀어야 하나 고민이 있었는데
 *  INSERT는 완전히 새로운 값을 집어 넣는 것이고 UPDATE는 기존에 있던 값을 바꾸는 것이라는 점 
 * */
CREATE DATABASE DML_PRACTICE;
USE DML_PRACTICE;       

CREATE TABLE CAR(
	CAR_CD 			VARCHAR(20),
	CAR_NM 			VARCHAR(20),
	PRICE 			INT,
	BRAND_NM 		VARCHAR(10),
	CATEGORY		VARCHAR(100),
	REG_DT			VARCHAR(500)
);


INSERT INTO CAR VALUES ('car1', '아반떼',  60000, '현대' ,  '준중형' , '2020-01-01');
INSERT INTO CAR VALUES ('car2' , '아이오닉', 67500, '현대', '준중형' , '2020-02-02');
INSERT INTO CAR VALUES ('car3' , '쏘나타',  80000, '현대', '중형' , '2020-03-03');
INSERT INTO CAR VALUES ('car4' , '그랜저',  115000, '현대', '준대형' , '2020-04-04');
INSERT INTO CAR VALUES ('car5' , '스타렉스',  155000, '현대', '대형' , '2020-05-05');
INSERT INTO CAR VALUES ('car6' , '제네시스', 175000, '현대', '중형' , '2020-06-06');
INSERT INTO CAR VALUES ('car7' , 'k3' , 68000, '기아', '준중형' , '2020-07-07');
INSERT INTO CAR VALUES ('car8' , '모닝',  39900, '기아', '소형' , '2020-08-08');
INSERT INTO CAR VALUES ('car9' , 'k5', 78000, '기아', '중형' , '2020-09-09');
INSERT INTO CAR VALUES ('car10' , 'k7', 115000, '기아', '준대형' , '2020-10-10');
INSERT INTO CAR VALUES ('car11', 'k9', 288000, '기아', '대형' , '2020-11-11');
INSERT INTO CAR VALUES ('car12', '레이', 65000, '기아', '소형' , '2021-01-01');
INSERT INTO CAR VALUES ('car13', '스포티지',  115000, '기아', '준중형' , '2021-02-02');
INSERT INTO CAR VALUES ('car14', '카니발', 180000, '기아', '대형' , '2021-03-03');
INSERT INTO CAR VALUES ('car15', 'SM5', 50000, '르노', '중형' , '2021-04-04');
INSERT INTO CAR VALUES ('car16', 'SM6', 73920, '르노', '중형' , '2021-05-05');
INSERT INTO CAR VALUES ('car17', 'QM6', 78000, '르노', '중형' , '2021-06-06');
INSERT INTO CAR VALUES ('car18', '렉스턴', 66000, '쌍용', '준대형' , '2021-07-07');
INSERT INTO CAR VALUES ('car19', '티볼리', 25500, '쌍용', '소형' , '2021-08-08');
INSERT INTO CAR VALUES ('car20', '코란도', 59700, '쌍용', '준중형' , '2021-09-09');

# 1) 기아 브랜드 차량의 전체 컬럼 조회하기
SELECT  * 
FROM 	CAR
WHERE   BRAND_NM = '기아'; 

# 2) 기아 브랜드가 아닌 차량의 전체 컬럼 조회하기
SELECT  * 
FROM 	CAR
WHERE BRAND_NM <> '기아';

# 3) 현대와 쌍용 브랜드의 전체 컬럼 조회하기 -> 왜 결과가 안나오지? OR이 아닌 AND로 쓴 오류 범함
SELECT  *
FROM 	CAR
WHERE 	BRAND_NM = '현대' 
OR      BRAND_NM = '쌍용';

# 4) 대형차가 아닌 차량의 전체 컬럼 조회하기
SELECT  *
FROM 	CAR 
WHERE 	CATEGORY <> '대형';

# 5) 소형차와 대형차의 전체 컬럼 조회하기 -> 왜 안나오지?
SELECT  *
FROM 	CAR 
WHERE 	CATEGORY = '소형' 
OR 	    CATEGORY = '대형';

# 6) 준중형차와 중형차의 전체 컬럼 조회하기
SELECT  *
FROM 	CAR
WHERE 	CATEGORY <> '중형'; 


# 7) 중형차중 르노 브랜드의 전체 컬럼 조회하기
SELECT  *
FROM 	CAR 
WHERE 	CATEGORY = '중형'
AND 	BRAND_NM = '르노';

# 8) 2021년에 등록된 차량의 전체 컬럼 조회하기
SELECT  *
FROM 	CAR 
WHERE 	REG_DT BETWEEN '2021-01-01' AND '2021-12-31'; 

# 9) 렌트비용이 50000 ~ 100000사이 차량의 전체 컬럼 조회하기
SELECT  *
FROM 	CAR 
WHERE 	PRICE >= 50000 AND PRICE <= 100000;


# 10) 기아브랜드 이며 렌트비용이 100000 ~ 200000인 차량의 전체 컬럼 조회하기
SELECT  *
FROM 	CAR 
WHERE 	BRAND_NM = '기아' 
AND 	PRICE BETWEEN 100000 AND 200000;

# 11) 현대브랜드 차량중 대형차량만 조회하기
SELECT  *
FROM 	CAR
WHERE 	BRAND_NM = '현대'
AND 	CATEGORY = '대형';

# 12) 차량의 전체 컬럼 조회하기 (렌트 가격이 많은 차량 순서)
SELECT    *
FROM 	  CAR 
ORDER BY  PRICE DESC;

# 13) 차량의 전체 컬럼 조회하기 (렌트 가격이 적은 차량 순서)
SELECT   *
FROM     CAR 
ORDER BY PRICE ASC;

# 14) 차량의 전체 컬럼 조회하기 (렌트 가격이 적은 차량 순서 , 브랜드 이름이 ㄱ~ㄴ순서 , 차량이름이 ㄱ~ㄴ순서)
# -> ㄱ ~ ㄴ 순서 어떻게 만들지? ORDER BY 컬럼명 ASC
SELECT   *
FROM 	 CAR 
ORDER BY PRICE ASC, BRAND_NM ASC, CAR_NM ASC;

# 15) 차량의 전체 컬럼 조회하기 (렌트 가격이 많은 차량 순서의 3개의 차량)
SELECT   *
FROM     CAR 
ORDER BY PRICE DESC 
LIMIT 3;

# 16) 차량의 전체 컬럼 조회하기 (렌트 가격이 적은 차량 순서 , 차량이름이 ㄱ~ㄴ순서의 3개의 차량)
# ㄱ ~ ㄴ 순서 어떻게 만들지 ? ORDER BY 컬럼명 ASC
SELECT   *
FROM     CAR
ORDER BY PRICE ASC , CAR_NM ASC; 

# 17) 아반떼 차량의 렌트가격을 40000원 으로 지정하기.  -> 지정하기면 UPDATE인건가
UPDATE CAR SET PRICE = 40000 WHERE CAR_NM = '아반떼';

# 18) 카니발 차량의 렌트가격을 현재 가격에서 -20000원 할인하기. 
UPDATE CAR SET PRICE = PRICE - 20000 WHERE CAR_NM = '카니발';

# 19) 현대브랜드 차량의 렌트가격을 현재 가격에서  -3000원 할인하기.
UPDATE CAR SET PRICE = PRICE - 3000 WHERE BRAND_NM = '현대';

# 20) 대형 차량의 가격을 현재 가격에서 + 10000원 증가하기
UPDATE CAR SET PRICE = PRICE + 1000 WHERE CATEGORY = '대형';

# 21) 코란도 차량의 등록날짜를 현재시간으로 변경하기
UPDATE CAR SET REG_DT = NOW() WHERE CAR_NM = '코란도';

# 22) 아반떼 차량을 삭제하기
DELETE FROM CAR WHERE CAR_NM = '아반떼';

# 23) K3,K5,K7,K9차량을 삭제하기
DELETE FROM CAR WHERE CAR_NM IN ('K3' , 'K5' , 'K7' , 'K9');

# 24) 현대브랜드 차량을 삭제하기
DELETE FROM CAR WHERE BRAND_NM = '현대';

# 25) 2021년도에 등록된 차량을 삭제하기
DELETE FROM CAR WHERE REG_DT BETWEEN '2021-01-01' AND '2021-12-31';

