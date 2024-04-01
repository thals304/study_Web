CREATE DATABASE SQL_ADVANCE_PRACTICE;
USE SQL_ADVANCE_PRACTICE;

CREATE TABLE TB_MEMBER(
    MEMBER_ID 		VARCHAR(20),
	MEMBER_NM 		VARCHAR(50),
	SEX 			VARCHAR(10),
	HP 				VARCHAR(20),
	EMAIL 			VARCHAR(20),
    RESIDENCE		VARCHAR(20)
);

CREATE TABLE TB_PRODUCT(
    PRODUCT_CD 		VARCHAR(20),
    PRODUCT_NM 		VARCHAR(100),
	PRICE 			INT,
	DELIVERY_PRICE 	INT
);

CREATE TABLE TB_ORDER(
	ORDER_CD 			VARCHAR(50),
	MEMBER_ID 			VARCHAR(50),
    PRODUCT_CD			VARCHAR(20),
	ORDER_GOODS_QTY 	INT,
    DELIVERY_MESSAGE 	VARCHAR(300),
    DELIVERY_STATUS 	VARCHAR(100),
	ORDER_DT 			DATETIME
);

INSERT INTO TB_MEMBER VALUES('user1', '메르켈' , 'f' , '010-1111-1111' , 'mer@gmail.com'  , '서울');
INSERT INTO TB_MEMBER VALUES('user2', '제임스고슬링' , 'm' , '010-2222-2222' , 'james@gmail.com' , '서울'); 
INSERT INTO TB_MEMBER VALUES('user3', '신사임당' , 'f' , '010-3333-3333' , 'shinsa@naver.com' , '경기');
INSERT INTO TB_MEMBER VALUES('user4', '유관순' , 'f' , '010-4444-4444' , 'yks@gmail.com' , '인천');
INSERT INTO TB_MEMBER VALUES('user5', '데니스리치' , 'm' , '010-5555-5555' , 'denis@gmail.com' , '부산');
INSERT INTO TB_MEMBER VALUES('user6', '팀버너스리' , 'm' , '010-6666-6666' , 'tim@naver.com' , '대구');
INSERT INTO TB_MEMBER VALUES('user7', '스티븐워즈니악' , 'm' , '010-7777-7777' , 'stevenw@gmail.com' , '경기');
INSERT INTO TB_MEMBER VALUES('user8', '선덕여왕' , 'f' , '010-8888-8888' , 'seonduk@gmail.com' , '서울');
INSERT INTO TB_MEMBER VALUES('user9', '스티브잡스' , 'm' , '010-9999-9999' , 'jobs@daum.net' , '부산');
INSERT INTO TB_MEMBER VALUES('user10', '빌게이츠' , 'm' , '010-1010-1010' , 'bill@naver.com' , '서울');

INSERT INTO TB_PRODUCT VALUES('product1', '삼성전자 2021 노트북 플러스2 15.6' , 598000 , 0 );    
INSERT INTO TB_PRODUCT VALUES('product2', '삼성전자 2021 갤럭시북 15.6' , 1208000 , 0 );
INSERT INTO TB_PRODUCT VALUES('product3', 'LG전자 10세대 코어i7 윈10탑재 17형 LG 그램 2020년형 17Z90N' , 2149000 , 0);
INSERT INTO TB_PRODUCT VALUES('product4', 'LG전자 2021그램 360 14' , 1740000 , 0 );
INSERT INTO TB_PRODUCT VALUES('product5', 'LG전자 2020 울트라 PC 14' , 477000 , 0 );
INSERT INTO TB_PRODUCT VALUES('product6', '2020 맥북 프로 13' , 2129650 , 3000 );
INSERT INTO TB_PRODUCT VALUES('product7', 'Apple 2020 맥북 에어 13' , 1489800 , 3000 );
INSERT INTO TB_PRODUCT VALUES('product8', '레노버 2021 IdeaPad Slim3 15.6' , 2129650 , 2500 );
INSERT INTO TB_PRODUCT VALUES('product9', '기가바이트 2021 Gaming G5 15.6' , 1499000 , 2500 );
INSERT INTO TB_PRODUCT VALUES('product10', 'HP 2021 노트북 15s' , 768840 , 2500 );

INSERT INTO TB_ORDER VALUES('order1', 'user1' , 'product1' ,  1 , '배송전 연락 주세요.' , '배송준비중' , '2019-01-03');
INSERT INTO TB_ORDER VALUES('order2', 'user1' , 'product2' ,  1 , '배송전 연락 주세요.' , '배송준비중' , '2019-02-25');
INSERT INTO TB_ORDER VALUES('order3', 'user1' , 'product3' ,  1 ,  '배송전 연락 주세요.' , '배송준비중' , '2019-03-12');
INSERT INTO TB_ORDER VALUES('order4', 'user5' , 'product8' ,  2 , '배송전 연락 주세요.' ,  '배송중' , '2019-04-11');
INSERT INTO TB_ORDER VALUES('order5', 'user6' , 'product2' ,  2 , '배송전 연락 주세요.' , '배송준비중' , '2019-05-30');
INSERT INTO TB_ORDER VALUES('order6', 'user3' , 'product1' ,  1 ,  '배송전 연락 주세요.' , '배송준비중' , '2019-06-01');
INSERT INTO TB_ORDER VALUES('order7', 'user2' , 'product2' ,  2 , '배송전 연락 주세요.' , '배송준비중' , '2019-07-12');
INSERT INTO TB_ORDER VALUES('order8', 'user10' , 'product1' ,  10 ,  '배송전 연락 주세요.' , '배송준비중' , '2019-12-25');
INSERT INTO TB_ORDER VALUES('order9', 'user9' , 'product2' ,  2 ,  '문 앞에 놓고 벨 눌러주세요.' , '배송중' , '2020-01-07');
INSERT INTO TB_ORDER VALUES('order10', 'user5' , 'product10' , 1 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-02-28');
INSERT INTO TB_ORDER VALUES('order11', 'user7' , 'product4' , 1 , '경비실에 맡겨 주세요.' , '배송완료' , '2020-03-03');
INSERT INTO TB_ORDER VALUES('order12', 'user2' , 'product4' , 2 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-04-27');
INSERT INTO TB_ORDER VALUES('order13', 'user8' , 'product3' , 1 , '배송전 연락 주세요' , '배송완료' , '2020-05-05');
INSERT INTO TB_ORDER VALUES('order14', 'user9' , 'product7' , 2 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-05-08');
INSERT INTO TB_ORDER VALUES('order15', 'user3' , 'product2' , 3 ,  '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-06-27');
INSERT INTO TB_ORDER VALUES('order16', 'user3' , 'product9' , 10 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-07-08');
INSERT INTO TB_ORDER VALUES('order17', 'user4' , 'product7' , 7 ,  '경비실에 맡겨 주세요.' , '배송중' , '2020-08-15');
INSERT INTO TB_ORDER VALUES('order18', 'user6' , 'product6' , 3 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-10-03');
INSERT INTO TB_ORDER VALUES('order19', 'user7' , 'product6' , 12 , '문 앞에 놓고 벨 눌러주세요.' , '배송완료' , '2020-11-11');
INSERT INTO TB_ORDER VALUES('order20', 'user10' , 'product8' , 5 , '배송전 연락 주세요' , '배송중' , '2020-12-20');



# 1) 남자가 주문한 상품의 총 주문량을 조회하기


			
# 2) 서울지역에 사는 여자가 주문한 상품의 총 주문량을 조회하기

	
    
# 3) '서울' , '경기' , '인천' 지역에 사는 여자가 주문한 상품의 평균 주문개수를 조회하기

			
			
# 4) 남자가 주문한 '상품코드별로' 그룹화하여 상품의 코드와 주문량의 합을 조회하되 주문량의 합이 적은 순서로 정렬하여 3개만 조회하기.

		
	
# 5) '상품 이름 별로' 그룹화하여 2020년에 가장 많이 팔린 상품명 3개와 총 판매량을 조회하기.



# 6) '지역별'로 그룹화하여 배송중인 상품의 지역명 , 주문량의 총합을 조회하기



# 7) 'Apple 2020 맥북 에어 13'를 구매한 유저의 아이디와 이름을 조회하기

			

# 8) 1000000 ~ 2000000가격의 판매된 상품들의 '상품코드별로' 그룹화하여  상품의 코드 , 총 판매량 조회하기


		
# 9) 1000000 ~ 2000000가격의 판매된 '상품이름별로' 그룹화하여 상품이름 , 총 판매량을 조회하되 판매량이 5개 이상인 상품을 판매량이 높은순서 , 상품이름을 ㄱ~ㅎ 순서로 조회하기



# 10) 한번에 주문 수량이 10개 이상인 상품 정보 모두와 주문수량 조회하기.



# 11) 2020년 동안 판매된 매출총액 조회하기.(가격 * 개수 + 배송비)



# 12) '상품이름별'로 그룹화하여 2020년 동안 판매된 수량(내림차순)순으로 정렬하여 상품이름 , 상품의 총 판매량 조회하기.



# 13) '지역별'로 그룹화하여 총 판매량이 많은 순서대로 정렬하여 지역명과 총 판매량 조회하기.



# 14) 배송이 완료된 상품의 회원테이블의 모든 정보와 배송상태 조회하기.



# 15) 배송이 완료되지 않은 '상품이름별로' 그룹화하여 상품 이름 , 주문 건수 조회하기.



# 16) '상품 코드별'로 그룹화하여 상품코드 , 판매금액 총합을 조회하되 판매급액이 많은 순서로 조회하기. 



# 17) '메르켈' 회원의 주문 상품 이름과 배송상태를 조회하기.



# 18) '메르켈' 회원의 주문금액 총합을 조회하기.



# 19) '사용자 아이디별로' 그룹화하여 사용자 아이디와 주문금액의 총합을 조회하기.



# 20) '사용자 아이디별로' 그룹화하여 사용자 아이디와 주문금액의 총합을 조회하되 주문금액 총합이 700만원 이상인 회원만 조회하기.



# 21) '사용자 아이디별로' 그룹화하여 주문금액 총합이 가장 많은 사람 3명의 아이디와 총 주문 금액을 순서대로 조회하기.


        