/*
 * 	24.03.29 TIME 13:19-13:35
 * 	TODAY 소감문
 *  일단 11번은 LOCATE를 어떻게 사용할지 모르겠어서 정답예시를 보고
 *  풀었다.
 *  그리고 COUNT(*)에 *을 사용하는 것이 아닌 다른 것으로 지정해서 하고 싶은데
 *  막상 어떤 컬럼명으로 할지 모르겠어서 일단 *으로 했지만 나중에 NULL값이 들어있을 때
 *  문제가 발생할 것 같다.
 * */
CREATE DATABASE SQL_ADVANCED_PRACTICE;
USE SQL_ADVANCED_PRACTICE;

CREATE TABLE MEMBER_TB(
    MEMBER_ID 		VARCHAR(20),
	MEMBER_NM 		VARCHAR(50),
	SEX 			VARCHAR(10),
	NATIONALITY 	VARCHAR(20),
	EMAIL 			VARCHAR(20),
    RESIDENCE		VARCHAR(20)
);

INSERT INTO MEMBER_TB VALUES('user1', '메르켈' , 'f' , '외국' , 'mer@gmail.com'  , '서울');
INSERT INTO MEMBER_TB VALUES('user2', '제임스고슬링' , 'm' , '외국' , 'james@gmail.com' , '서울'); 
INSERT INTO MEMBER_TB VALUES('user3', '신사임당' , 'f' , '내국' , 'shinsa@naver.com' , '경기');
INSERT INTO MEMBER_TB VALUES('user4', '유관순' , 'f' , '내국' , 'yks@naver.com' , '인천');
INSERT INTO MEMBER_TB VALUES('user5', '데니스리치' , 'm' , '외국' , 'denis@gmail.com' , '부산');
INSERT INTO MEMBER_TB VALUES('user6', '팀버너스리' , 'm' , '외국' , 'tim@gmail.com' , '대구');
INSERT INTO MEMBER_TB VALUES('user7', '스티븐워즈니악' , 'm' , '외국' , 'stevenw@gmail.com' , '경기');
INSERT INTO MEMBER_TB VALUES('user8', '선덕여왕' , 'f' , '내국' , 'seonduk@daum.net' , '대구');
INSERT INTO MEMBER_TB VALUES('user9', '스티브잡스' , 'm' , '외국' , 'jobs@gmail.com' , '부산');
INSERT INTO MEMBER_TB VALUES('user10', '빌게이츠' , 'm' , '외국' , 'bill@gmail.com' , '서울');
INSERT INTO MEMBER_TB VALUES('user11', '세종대왕' , 'm' , '내국' , 'seojong@naver.com' , '서울');
INSERT INTO MEMBER_TB VALUES('user12', '이순신' , 'm' , '내국' , 'leess@daum.net' , '부산');


# 1) '내국'인의 회원 수를 조회하기
SELECT NATIONALITY , COUNT(*)
FROM   MEMBER_TB 
WHERE  NATIONALITY = '내국';
		
         
# 2) '서울' 지역의 회원 수를 조회하기        
SELECT RESIDENCE , COUNT(*)
FROM   MEMBER_TB 
WHERE  RESIDENCE = '서울';
        
# 3) '부산' , '대구'에 거주하는 회원 수를 조회하기 -> 왜 안되지? GROUP BY를 사용해야함 단순히 WHERE로만 해결 불가능
SELECT    RESIDENCE, COUNT(*)
FROM      MEMBER_TB 
WHERE     RESIDENCE IN('부산', '대구')
GROUP BY  RESIDENCE;

# 4) 성별로 그룹화하여 회원의 수를 조회하기
SELECT   SEX , COUNT(*)
FROM     MEMBER_TB 
GROUP BY SEX;
        
# 5) 거주지역별로 그룹화하여 회원 수를 조회하기
SELECT   RESIDENCE , COUNT(*)     
FROM     MEMBER_TB 
GROUP BY RESIDENCE;
        
# 6) 국적별로 그룹화하여 회원 수를 조회하기
SELECT   NATIONALITY , COUNT(*)     
FROM     MEMBER_TB 
GROUP BY NATIONALITY;       
        
# 7) (국적 -> 성)으로 그룹화하여 회원 수를 조회하기 -> GROUP BY 2개
SELECT   NATIONALITY , SEX , COUNT(*)
FROM     MEMBER_TB 
GROUP BY NATIONALITY , SEX;

# 8) (거주지역 -> 성)으로 그룹화하여 회원 수를 조회하기
SELECT   RESIDENCE , SEX , COUNT(*)
FROM	 MEMBER_TB 
GROUP BY RESIDENCE , SEX;

# 9) (성 -> 거주지역)으로 그룹화하여 회원 수를 조회하기
SELECT   SEX , RESIDENCE , COUNT(*)
FROM     MEMBER_TB 
GROUP BY SEX , RESIDENCE;

# 10) (국적 -> 거주지역 -> 성)으로 그룹화하여 회원 수를 조회하기
SELECT   NATIONALITY , RESIDENCE, SEX , COUNT(*)
FROM     MEMBER_TB 
GROUP BY NATIONALITY , RESIDENCE, SEX;

# 11) 도메인별로 그룹화하여 회원 수를 조회하기(SUBSTRING , LOCATE 함수 사용) -> 얘는 LOCATE 공부 필요
# 자르기 시작할 위치 : LOCATE('@', EMAIL) + 1 : @ 다음
SELECT   SUBSTRING(EMAIL, LOCATE('@', EMAIL) + 1) AS DOMAIN , 
	     COUNT(*)
FROM     MEMBER_TB 
GROUP BY DOMAIN;


# 12) 지역별로 그룹화하여 회원 수를 조회하기(서울지역 제외)
SELECT   RESIDENCE , COUNT(*)
FROM     MEMBER_TB 
WHERE    RESIDENCE <> '서울'
GROUP BY RESIDENCE;

# 13) '서울' , '경기' , '인천' 지역별로 그룹화하여 회원 수를 조회하되 회원수가 3명 이상일 경우만 조회하기.
SELECT   RESIDENCE , COUNT(*) AS COUNT
FROM     MEMBER_TB 
WHERE    RESIDENCE IN('서울', '경기', '인천')
GROUP BY RESIDENCE
HAVING   COUNT >= 3;