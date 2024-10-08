# 24.03.27 TIME 16:43-17:03
# TODAY 소감문
# 문자열 ORDER BY에 익숙해진 것 같다. 근데 ORDER BY 뒤에 어떤 칼럼이 먼저 오냐에 따라
# 적용되는 순서도 다르다는 것은 아직 어색한 것 같다. 
/*
 * 24.03.28 TIME 14:19-14:27
 * TODAY 소감문
 * 이제 UPDATE, DELETE는 자신있는 것 같다.
 * */
USE DML_PRACTICE;

CREATE TABLE BOOK(
	BOOK_ID 		INT,
    TITLE 			VARCHAR(100),
    PRICE 			INT,
    SALES_CNT		INT,
    AUTHOR 			VARCHAR(40),
    PUBLISHING_COM 	VARCHAR(30),
    PUBLISHING_DT 	TIMESTAMP,
    CONTENT 		VARCHAR(500),
    DISCOUNT_RATE 	INT				
);


INSERT INTO BOOK VALUES(1, '나미야 잡화점의 기적', 15000, 100, '히가시노 게이고', '현대문학', '2019-01-11', '일본을 대표하는 소설가 히가시노 게이고의 신작', 10);
INSERT INTO BOOK VALUES(2, '연필로 쓰기', 18000, 80, '김훈', '문학동네', '2018-02-14', '70대의 김훈이 연필로 꾹꾹 눌러쓴 산문의 진경', 5);
INSERT INTO BOOK VALUES(3, '인간 실격', 20000, 50, '다자이 오사무', '민음사', '2016-11-20', '2019 상반기 종합 베스트셀러', 15);
INSERT INTO BOOK VALUES(4, '기묘한 신혼여행', 12000, 30, '정태원', '문학의 문학', '2017-04-20', '13편의 추리문학 걸작선', 20);
INSERT INTO BOOK VALUES(5, '외국어 공부의 감각', 15000, 100, '아키야마 요헤이', '월북', '2011-03-11', '나는 어떻게 10개 국어를 말하게 되었나?', 25);
INSERT INTO BOOK VALUES(6, 'EBS 수능완성 고등 제2외국어', 28000, 200, 'EBS 편집부', 'EBS교육방송', '2014-08-14', '2014 학년도 수능 연계교재', 10);
INSERT INTO BOOK VALUES(7, '외국어 전파담', 23000, 70, '로버트 파우저', '혜화', '2012-10-03', '외국어는 어디에서 어디로', 10);
INSERT INTO BOOK VALUES(8, '아무튼,외국어', 22000, 50, '조지영', '위고', '2019-04-20', '모든 나라에는 철수와 영희가 있다', 10);
INSERT INTO BOOK VALUES(9, '컴퓨터 비전과 딥러닝', 35000, 700, '라쟈링가파 샨무갸마니', '에이콘', '2018-02-18', '텐서플로와 케라스를 사용한 전문 가이드', 5);
INSERT INTO BOOK VALUES(10, '쉽게 배우는 데이터 통신', 19000, 100, '박기현', '한빛아카데미', '2015-03-10', '데이터 통신과 컴퓨터 네트워크', 10);
INSERT INTO BOOK VALUES(11, '컴퓨터활용능력', 38000, 200, '이주희', '배움', '2012-09-24', '컴퓨터 자격증', 20);
INSERT INTO BOOK VALUES(12, '초등학생이 알아야할 숫자', 22000, 0, '엘리스 제임스', '어스본코리아', '2013-06-12', '컴퓨터와 코디 100가지', 10);


# 1) 책 전체 컬럼을 조회하기 (책 제목 ㄱ~ㅎ 순서)
SELECT   *
FROM	 BOOK
ORDER BY TITLE ASC;
		
# 2) 책 전체 컬럼을 조회하기 (책 제목 ㄱ~ㅎ 순서 , 가격이 비싼 순서)
SELECT   *
FROM 	 BOOK 
ORDER BY TITLE ASC, PRICE DESC;
		
# 3) 책 전체 컬럼을 조회하기 (책 제목 ㄱ~ㅎ 순서 , 저자명 ㄱ~ㅎ순서)
SELECT 	 *
FROM 	 BOOK 
ORDER BY TITLE ASC, AUTHOR ASC;
		
# 4) 책 전체 컬럼을 조회하기 (가격이 높은 순서 , 책 제목 ㄱ~ㅎ 순서) 
SELECT   *
FROM 	 BOOK 
ORDER BY PRICE DESC , TITLE ASC;
		
# 5) 책 전체 컬럼을 조회하기 (최신 등록된 순서)
SELECT   *
FROM 	 BOOK 
ORDER BY PUBLISHING_DT DESC;
		
# 6) 책 전체 컬럼을 조회하기 (최신 등록된 순서 , 책 제목 ㄱ~ㅎ순서)
SELECT 	 *
FROM 	 BOOK 
ORDER BY PUBLISHING_DT DESC , TITLE ASC;
		
# 7) 제목,가격,할인률을 조회하기 컬럼을 조회하기 (할인률이 높은 순서 , 가격이 낮은 순서)
SELECT   TITLE, PRICE, DISCOUNT_RATE
FROM 	 BOOK 
ORDER BY DISCOUNT_RATE DESC, PRICE DESC;
		
# 8) 제목,가격,출판사,판매량을 조회하기(가장 많이 팔린 3곳)
SELECT   TITLE, PRICE, PUBLISHING_COM, SALES_CNT
FROM     BOOK 
ORDER BY SALES_CNT DESC
LIMIT 	 3;
		
# 9) 제목,가격,출판사,판매량을 조회하기(가장 적게 팔린 3곳)
SELECT   TITLE, PRICE, PUBLISHING_COM, SALES_CNT
FROM     BOOK 
ORDER BY SALES_CNT ASC
LIMIT 	 3;

# 10) 판매량이 100개 이하인 책 전체 컬럼을 조회하기
SELECT  *
FROM 	BOOK 
WHERE 	SALES_CNT <= 100;

# 11) 가격이 10000~20000사이인 책의 전체컬럼을 조회하기
SELECT  *
FROM 	BOOK 
WHERE 	PRICE BETWEEN 10000 AND 20000;
		
# 12) 가격 , 가격에 부가세를 10%를 계산한 컬럼과 , 부가세를 10%를 더한 컬럼조회하기
SELECT  PRICE ,
		PRICE * 0.1 AS TAX ,
		PRICE + PRICE * 0.1 AS TOTAL_PRICE
FROM 	BOOK;
		
# 13) 가격 , 할인률 , 가격에 할인률을 적용한 컬럼을 조회하기
SELECT  PRICE ,
	    DISCOUNT_RATE ,
	    PRICE - PRICE * (DISCOUNT_RATE / 100) AS DISCOUNT_PRICE
FROM 	BOOK;
		
# 14) 가격 , 할인률 , 10%부가세 , 가격에 할인률을 적용하고 원가의 10%를 더한 책의 전체 컬럼을 조회하기
SELECT  PRICE ,
	    DISCOUNT_RATE ,
	    PRICE * 0.1  AS TAX,
	    PRICE - PRICE * (DISCOUNT_RATE / 100) + PRICE * 0.1 AS TOTAL_PRICE  # TAX로 사용 가능할지 알았는데 안됨
FROM	BOOK;

# 15) '나미야 잡화점의 기적' 의 할인률을 5로 변경하기.
UPDATE BOOK SET DISCOUNT_RATE = 5 WHERE TITLE = '나미야 잡화점의 기적';

# 16) '인간 실격'의 판매량을 10증가하기.
UPDATE BOOK SET SALES_CNT  = SALES_CNT  + 10 WHERE TITLE = '인간 실격';
		
# 17) 할인률이 20이 넘은 데이터들의 할인률을 10으로 변경하기.
UPDATE BOOK SET DISCOUNT_RATE = 10 WHERE DISCOUNT_RATE >= 20;

# 18) 출판일이 2015년 이전의 판매량과 할인률을 0으로 변경하기
UPDATE BOOK SET SALES_CNT = 0 , DISCOUNT_RATE = 0 WHERE PUBLISHING_DT < '2015-01-01';

# 19) '컴퓨터활용능력' , '초등학생이 알아야할 숫자' 데이터를 삭제하기
DELETE FROM BOOK WHERE TITLE IN('컴퓨터활용능력' , '초등학생이 알아야할 숫자'); 

# 20) 출판일이 2015년 이전의 데이터를 삭제하기
DELETE FROM BOOK WHERE PUBLISHING_DT < '2015-01-01';

COMMIT;
SELECT * FROM BOOK;