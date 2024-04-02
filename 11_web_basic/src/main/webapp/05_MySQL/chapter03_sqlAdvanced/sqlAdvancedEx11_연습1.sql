/*
 *  24.04.02 TIME 13:26-13:56
 *  TODAY 소감문
 *  일단 너무 어렵다. 근데 각 테이블에서 서로 공통으로 가지고 있는 것이
 *  WHERE에서 SUBQUERY에서 사용할 것이다. 
 *  근데 자기 자신을 한 번더 SUB QUEREY로 사용해준다는 점이 나에게 어려웠던 것 같다.
 *  아무리 자기 자신을 중복으로 써준다고 하더라도 기존 방식과 같게 하면 되었기 때문에
 * 적응하기 빨랐던 것 같은데 적응하자마자 GROUP BY라는게 갑자기 튀어나오니까 어떤 문제에서
 * 이걸 쓰고 어떤 문제에서는 다른 걸 써야하는지 구분이 안서는것 같다.
 * */
USE SQL_ADVANCE_PRACTICE;
# TB_MEMBER, TB_PRODUCT , TB_ORDER 테이블 사용

# 1) 한번에 주문 수량이 10개 이상인 상품 정보 조회하기.
SELECT  *
FROM    TB_PRODUCT 
WHERE   PRODUCT_CD IN (SELECT PRODUCT_CD
                      FROM   TB_ORDER
                      WHERE  ORDER_GOODS_QTY >= 10);
 


# 2) 한번에 제일 많은 수량을 주문한 주문 코드 조회하기.
# 자기 자신을 이용한 중복 SUB QUERY?
SELECT ORDER_CD
FROM   TB_ORDER 
WHERE  ORDER_GOODS_QTY IN (SELECT MAX(ORDER_GOODS_QTY)
                           FROM   TB_ORDER );


# 3) 한번에 제일 많은 수량을 주문한 상품명 조회하기.
# 한번에 제일 많은 수량 SELECT MAX() 사용!
SELECT PRODUCT_NM
FROM   TB_PRODUCT
WHERE  PRODUCT_CD = ( SELECT PRODUCT_CD
                      FROM   TB_ORDER
                      WHERE  ORDER_GOODS_QTY  IN (SELECT MAX(ORDER_GOODS_QTY)
                                                  FROM   TB_ORDER));
                      
# 4) 한번에 제일 많은 수량을 주문한 유저의 모든 정보 조회하기.
SELECT *
FROM   TB_MEMBER
WHERE  MEMBER_ID = (SELECT MEMBER_ID
                    FROM   TB_ORDER
                    WHERE  ORDER_GOODS_QTY IN (SELECT MAX(ORDER_GOODS_QTY)
                                               FROM   TB_ORDER ));
                                              
# 5) 배송이 완료된 상품의 회원테이블의 모든 정보 조회하기.
SELECT *
FROM   TB_MEMBER 
WHERE  MEMBER_ID IN (SELECT MEMBER_ID 
                     FROM   TB_ORDER 
                     WHERE  DELIVERY_STATUS = '배송완료');


# 6) 배송이 완료되지 않은 상품의 상품명 조회하기.
SELECT PRODUCT_NM
FROM   TB_PRODUCT 
WHERE  PRODUCT_CD IN (SELECT PRODUCT_CD 
                      FROM   TB_ORDER 
                      WHERE  DELIVERY_STATUS <> '배송완료');


# 7) '메르켈' 회원이 주문한 상품 코드와 주문상품 명을 조회하기.
SELECT PRODUCT_CD ,
       PRODUCT_NM
FROM   TB_PRODUCT 
WHERE  PRODUCT_CD IN (SELECT PRODUCT_CD
                      FROM   TB_ORDER 
                      WHERE  MEMBER_ID IN (SELECT MEMBER_ID
                                           FROM   TB_MEMBER 
                                           WHERE  MEMBER_NM = '메르켈'));


# 8) '메르켈' 회원의 총 주문수량을 조회하기.
SELECT SUM(ORDER_GOODS_QTY)
FROM   TB_ORDER
WHERE  MEMBER_ID IN (SELECT MEMBER_ID
                     FROM   TB_MEMBER
                     WHERE  MEMBER_NM = '메르켈'); 
                    
# 9) 서울지역의 모든 제품의 판매수량의 총합을 조회하기.
SELECT SUM(ORDER_GOODS_QTY) AS ORDER_GOODS_QTY
FROM   TB_ORDER
WHERE  MEMBER_ID IN (SELECT MEMBER_ID
                     FROM   TB_MEMBER 
                     WHERE  RESIDENCE = '서울');


# 10) 삼성전자 2021 노트북 플러스2 15.6이 판매된 지역을 조회하기.
SELECT RESIDENCE
FROM   TB_MEMBER 
WHERE  MEMBER_ID IN (SELECT MEMBER_ID
                     FROM   TB_ORDER 
                     WHERE  PRODUCT_CD IN (SELECT PRODUCT_CD
                                           FROM   TB_PRODUCT 
                                           WHERE  PRODUCT_NM = '삼성전자 2021 노트북 플러스2 15.6'));


# 11) 2020년 동안 판매된 상품의 양이 5개 미만인 상품 이름 조회하기.
# GROUP BY를 사용해야 한다고? WHERE AND가 안됨
SELECT PRODUCT_NM
FROM   TB_PRODUCT
WHERE  PRODUCT_CD IN (SELECT PRODUCT_CD
                      FROM   TB_ORDER 
                      WHERE  SUBSTRING(ORDER_DT, 1 , 4) = '2020'
                      GROUP BY PRODUCT_CD 
                      HAVING   SUM(ORDER_GOODS_QTY) < 5);

# 12) user4가 주문한 주문보다 주문을 많이 한 회원의 아이디와 주문개수를 조회하기.
# TB_ORDER가 MEMBER_ID , ORDER_GOODS_QTY를 같이 가지고 있으므로 굳이 TB_MEMBER와 엮어서 문제 풀지 않아도 됨
SELECT MEMBER_ID , 
       SUM(ORDER_GOODS_QTY) AS TOTAL_QTY
FROM   TB_ORDER 
GROUP BY MEMBER_ID 
HAVING  TOTAL_QTY > (SELECT SUM(ORDER_GOODS_QTY)
                     FROM   TB_ORDER 
                     WHERE  MEMBER_ID = 'user4');
								

