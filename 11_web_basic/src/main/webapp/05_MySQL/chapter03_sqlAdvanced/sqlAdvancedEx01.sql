
/*
   
	 # 집계(통계) 함수  
	 
	 	 
	 	- 많은 레코드를 입력으로 사용하고 결과로 많은 데이터에 대한 요약 & 산출된 '단일' 값을 반환한다.
	 	- NULL값의 데이터는 제외하고 반환데이터를 산출한다.
	 	
		 1) COUNT : 조회될 데이터들의 개수를 가져온다.
		 2) SUM   : 조회될 데이터들의 합을 가져온다.
		 3) AVG   : 조회될 데이터들의 평균을 가져온다.
		 4) MAX   : 조회될 데이터들의 최대값을 가져온다.
		 5) MIN   : 조회될 데이터들의 최소값을 가져온다.
	
*/

CREATE DATABASE SQL_ADVANCED;
USE SQL_ADVANCED;
CREATE TABLE ORDER_EX(
	ORDER_CD 			VARCHAR(50),
	MEMBER_ID 			VARCHAR(50),
    PRODUCT_CD			VARCHAR(20),
	ORDER_GOODS_QTY 	INT,
    DELIVERY_MESSAGE 	VARCHAR(300),
    DELIVERY_STATUS 	VARCHAR(100),
	ORDER_DT 			TIMESTAMP
);

INSERT INTO ORDER_EX VALUES('order1', 'user1' , 'product1' ,  1 , '배송전 연락 주세요.' , '배송준비중' , '2019-01-03');
INSERT INTO ORDER_EX VALUES('order2', 'user1' , 'product2' ,  1 , '배송전 연락 주세요.' , '배송준비중' , '2019-02-25');
INSERT INTO ORDER_EX VALUES('order3', 'user1' , 'product3' ,  1 ,  '배송전 연락 주세요.' , '배송준비중' , '2019-03-12');
INSERT INTO ORDER_EX VALUES('order4', 'user5' , 'product8' ,  2 , '배송전 연락 주세요.' ,  '배송중' , '2019-04-11');
INSERT INTO ORDER_EX VALUES('order5', 'user6' , 'product2' ,  2 , '배송전 연락 주세요.' , '배송준비중' , '2019-05-30');
INSERT INTO ORDER_EX VALUES('order6', 'user3' , 'product1' ,  1 ,  '배송전 연락 주세요.' , '배송준비중' , '2019-06-01');
INSERT INTO ORDER_EX VALUES('order7', 'user2' , 'product2' ,  2 , '배송전 연락 주세요.' , '배송준비중' , '2019-07-12');
INSERT INTO ORDER_EX VALUES('order8', 'user10' , 'product1' ,  10 ,  '배송전 연락 주세요.' , '배송준비중' , '2019-12-25');
INSERT INTO ORDER_EX VALUES('order9', 'user9' , 'product2' ,  2 ,  '문 앞에 놓고 벨 눌러주세요.' , '배송중' , '2020-01-07');
INSERT INTO ORDER_EX VALUES('order10', 'user5' , 'product10' , 1 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-02-28');
INSERT INTO ORDER_EX VALUES('order11', 'user7' , 'product4' , 1 , '경비실에 맡겨 주세요.' , '배송완료' , '2020-03-03');
INSERT INTO ORDER_EX VALUES('order12', 'user2' , 'product4' , 2 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-04-27');
INSERT INTO ORDER_EX VALUES('order13', 'user8' , 'product3' , 1 , '배송전 연락 주세요' , '배송완료' , '2020-05-05');
INSERT INTO ORDER_EX VALUES('order14', 'user9' , 'product7' , 2 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-05-08');
INSERT INTO ORDER_EX VALUES('order15', 'user3' , 'product2' , 3 ,  '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-06-27');
INSERT INTO ORDER_EX VALUES('order16', 'user3' , 'product9' , 10 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-07-08');
INSERT INTO ORDER_EX VALUES('order17', 'user4' , 'product7' , 7 ,  '경비실에 맡겨 주세요.' , '배송중' , '2020-08-15');
INSERT INTO ORDER_EX VALUES('order18', 'user6' , 'product6' , 3 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-10-03');
INSERT INTO ORDER_EX VALUES('order19', 'user7' , 'product6' , 12 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-11-11');
INSERT INTO ORDER_EX VALUES('order20', 'user10' , 'product8' , 5 , '배송전 연락 주세요' , '배송중' , '2020-12-20');

# (COUNT함수 예시) 전체 주문건수를 조회하기 COUNT는 ROW 한 줄씩 세는 것 가능 -> (*) 사용 가능 
SELECT  COUNT(*)
FROM 	ORDER_EX ;

# (MAX함수 예시) 한번에 주문량이 제일 많았던 주문량을 조회하기.
SELECT  MAX(ORDER_GOODS_QTY)
FROM 	ORDER_EX ;

# (MIN함수 예시) 한번에 주문량이 제일 적었던 주문량을 조회하기.
SELECT  MIN(ORDER_GOODS_QTY)
FROM 	ORDER_EX ;
		
# (COUNT함수 + WHERE구문 예시) 배송이 완료된 주문건수를 조회하기
SELECT COUNT(*)
FROM   ORDER_EX 
WHERE  DELIVERY_STATUS = '배송완료';
		        		
# (SUM함수 + WHERE구문 예시) 'product1'상품의 총 판매 수량을 조회하기
SELECT  SUM(ORDER_GOODS_QTY)
FROM 	ORDER_EX 
WHERE   PRODUCT_CD = 'product1';
		
# (AVG함수 + WHERE구문 예시) 'product1'상품의 평균 주문량을 조회하기
SELECT  AVG(ORDER_GOODS_QTY)
FROM 	ORDER_EX
WHERE   PRODUCT_CD = 'product1';


/*
     
     #  GROUP BY
     
		- 출력된 레코드를 그룹으로 묶고 각 그룹에 대한 요약 및 통계값을 계산한다. ( 집계함수와 같이 사용 한다. )
			
		[ 형식 ]
            
		SELECT 
			집계함수(<필드명>) 
		FROM 
			<테이블명> 
        GROUP BY 
			<필드명> 
			
		WHERE의 위치는 FROM 다음 ( GROUP BY보다 앞에 있어야 함 )	
            
*/

# (GROUP BY 예시1) 사용자별로 주문상품의 건수를 조회하기
SELECT   MEMBER_ID , COUNT(*)
FROM 	 ORDER_EX
GROUP BY MEMBER_ID;

# (GROUP BY 예시2) 배송상태별로 개수를 조회하기
SELECT   DELIVERY_STATUS ,  COUNT(*)
FROM 	 ORDER_EX 
GROUP BY DELIVERY_STATUS;
 
# (GROUP BY + WHERE구문 예시) 배송완료가 아닌 배송상태별로 개수를 조회하기
SELECT   DELIVERY_STATUS , COUNT(*)  
FROM     ORDER_EX
WHERE    DELIVERY_STATUS <> '배송완료'
GROUP BY DELIVERY_STATUS; 

# (GROUP BY + WHERE구문 + ORDER BY + LIMIT 예시) 'product4' , 'product5' , 'product6'이 아닌 상품별로 주문상품의 총(SUM) 주문수량(ORDER_GOODS_QTY)을 조회한뒤 가장 많이 주문된 상품 3개만 조회하기
SELECT    PRODUCT_CD , SUM(ORDER_GOODS_QTY)  AS TOTAL_QTY
FROM	  ORDER_EX 
WHERE     PRODUCT_CD NOT IN('product4', 'product5', 'product6')
GROUP BY  PRODUCT_CD
ORDER BY  SUM(ORDER_GOODS_QTY ) DESC
LIMIT     3;

# (GROUP BY + 함수 사용예시) 연도별로 총 주문건수 , 총 주문수량 , 평균 주문수량 조회하기
# 총 주문건수 : COUNT(*)인데 ORDER_GOODS_QTY로 하는게 더 좋음 /   총 주문 수량 : SUM(ORDER_GOODS_QTY)
# SUBSTRING(컬럼명 , X , Y) : X자리에서 부터 Y개
SELECT   SUBSTRING(ORDER_DT , 1 , 4) , 
		 COUNT(ORDER_GOODS_QTY),
		 SUM(ORDER_GOODS_QTY),
		 AVG(ORDER_GOODS_QTY)
FROM     ORDER_EX 
GROUP BY SUBSTRING(ORDER_DT , 1 , 4);

# AS 주어진 것
SELECT   SUBSTRING(ORDER_DT , 1 , 4) AS YEAR, 
		 COUNT(ORDER_GOODS_QTY) AS COUNT_QTY,
		 SUM(ORDER_GOODS_QTY) AS SUM_ATY,
		 AVG(ORDER_GOODS_QTY) AS AVG_QTY
FROM     ORDER_EX 
GROUP BY SUBSTRING(ORDER_DT , 1 , 4);

# (GROUP BY 2개이상 그룹화 예시) 사용자별로 , 주문상품별로 주문상품의 총수량을 조회하기
SELECT   MEMBER_ID , 
         PRODUCT_CD , 
         SUM(ORDER_GOODS_QTY)
FROM	 ORDER_EX 
GROUP BY MEMBER_ID , 
         PRODUCT_CD 
ORDER BY MEMBER_ID ,
         PRODUCT_CD ;

/*
                        
	 # HAVING > WHERE과 비슷(조건을 거는 것)
		
        - GROUP BY문법에 조건식을 추가할경우 HAVING을 사용한다.
    
		[ 형식 ]
            
		SELECT 
			집계함수(<필드명>) 
		FROM 
			<테이블명> 
		{WHERE					생략가능
			<조건식>}
        GROUP BY 
			<필드명> 
		HAVING 
			<GROUP BY조건>
    
      WHERE는 원래 있는 애들에게 조건을 거는 것, HAVING은 GROUP BY를 통해 나온 애들에 조건을 거는 것
 */	

# (HAVING 예시1) 상품별로 주문 총수량을 조회하'되' 판매량이 10개 이상인 상품만 조회하기

SELECT   PRODUCT_CD  , SUM(ORDER_GOODS_QTY) AS SUM_QTY
FROM 	 ORDER_EX 
GROUP BY PRODUCT_CD 
HAVING   SUM(ORDER_GOODS_QTY) >= 10;

SELECT   PRODUCT_CD  , SUM(ORDER_GOODS_QTY) AS SUM_QTY
FROM 	 ORDER_EX 
GROUP BY PRODUCT_CD 
WHERE   SUM(ORDER_GOODS_QTY) >= 10; # 오류 : 그룹핑에 대한 조건은 HAVING에서 사용함

# (HAVING 예시2) 2020년에 주문한 상품별로 주문 총수량을 조회하되 주문수량의 합이 10개 이상만 조회하기
SELECT   PRODUCT_CD  ,
         SUM(ORDER_GOODS_QTY) AS SUM_QTY
FROM     ORDER_EX 
WHERE    SUBSTRING(ORDER_DT , 1 , 4) = '2020'
GROUP BY PRODUCT_CD 
HAVING   SUM_QTY >= 10;
        	
# (WHERE GROUP BY HAVING ORDER BY LIMIT 예시)2020년에 주문된 상품 중에서 사용자별로 주문상품별로 총 주문수량을 조회하되 총 주문수량이 5개 이상만 조회하고 가장 많이 조회된 3개의 레코드만 조회하기.
SELECT   MEMBER_ID  ,
         PRODUCT_CD ,
         SUM(ORDER_GOODS_QTY) AS SUM_QTY
FROM     ORDER_EX 
WHERE    SUBSTRING(ORDER_DT, 1, 4) = '2020'
GROUP BY MEMBER_ID ,
		 PRODUCT_CD 
HAVING   SUM_QTY >= 5
ORDER BY SUM_QTY DESC 
LIMIT    3;