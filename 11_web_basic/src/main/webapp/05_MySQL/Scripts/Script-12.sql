CREATE DATABASE MUKSULLANG_RRS;
USE MUKSULLANG_RRS;

CREATE TABLE USER(
	USER_ID                 VARCHAR(100) PRIMARY KEY,
	PASSWD                  VARCHAR(100) NOT NULL,
	EMAIL                   VARCHAR(50)  NOT NULL,
	ADDRESS                 VARCHAR(30)  NOT NULL,
	PROFILE_ORIGINAL_NAME   VARCHAR(200) DEFAULT 'userProfile.png',
	PROFILE_UUID            VARCHAR(200) DEFAULT 'userProfile.png',
	AGREE_YN       			CHAR(1)      DEFAULT 'y',
	AGREE_EMAIL_YN 			CHAR(1),
	ACTIVE_YN      			CHAR(1)      DEFAULT 'y',
	INACTIVE_AT    			TIMESTAMP    DEFAULT NULL,
	JOIN_AT        			TIMESTAMP    DEFAULT (CURRENT_DATE),
	ROLE                    VARCHAR(50)  DEFAULT 'user'
);

# POST_NM은 BESTOF / RECOMMEND 게시물을 구분하기 위함
# TITLE(가게 이름), SORT(식당, 카페, 바 중에 구분), LOCATION(위치)으로 BEST OF 게시물 검색 > TITLE은 RECOMMEND에서는 그냥 게시물 제목
# BEST OF에서만 사용하는 컬럼은 DEFAULT NULL / BEST OF & RECOMMEND에서 공통으로 사용하는 컬럼은 NOT NULL
# ADMIN이 게시물 업로드/수정/삭제 하는 건데 ADMIN_ID가 컬럼으로 필요(단, ADMIN이 삭제되도 게시물은 삭제 안되게 해야함)
CREATE TABLE POST(
	POST_ID      BIGINT        PRIMARY KEY AUTO_INCREMENT,
	POST_NM      VARCHAR(30)   NOT NULL,
	ADMIN_ID     VARCHAR(100),
	TITLE        VARCHAR(50)   NOT NULL,
	SORT         VARCHAR(20)   DEFAULT NULL,
	LOCATION     VARCHAR(1000) DEFAULT NULL,
	IMAGE        VARCHAR(200)  NOT NULL,
	RUNNING_TIME VARCHAR(200)  DEFAULT NULL,
	ENROLL_AT    TIMESTAMP     DEFAULT NOW(),
	FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID) ON DELETE SET NULL
);

# POST_ID로 조인을 통해 게시물 내용 여러 개 
# fk문에 대해 대부분 ON DELETE CASCADE로 해주나?
# CONTENT는 not null로 해서 기본으로 게시물 하나당 1개 이상 내용 업데이트 
CREATE TABLE CONTENT(
	CONTENT_ID   BIGINT        PRIMARY KEY AUTO_INCREMENT,
	CONTENT      VARCHAR(10000) NOT NULL, 
	POST_ID      BIGINT        NOT NULL,
	FOREIGN KEY (POST_ID) REFERENCES POST(POST_ID) ON DELETE CASCADE	
);

# 누가 리뷰 달았는지 USER_ID , 어떤 게시물에 달았는지 POST_ID 컬럼 필요(post 테이블은 user 테이블과 연관성이 없기 때문)
# CONTENT : 리뷰 내용
# RATING : BEST OF 게시물에 대한 평가(리뷰와 같이 업로드) > 어떻게 구현하지? 별 클릭 개수로
# (보류)REPLY_LIKE : 다른 사람이 단 리뷰에 좋아요 누르기 (BIGINT가 맞나?)
# REPLY_LIKE    BIGINT        DEFAULT 0,
CREATE TABLE REPLY(
    REPLY_ID      BIGINT        PRIMARY KEY AUTO_INCREMENT,
    POST_ID       BIGINT        NOT NULL,
    USER_ID       VARCHAR(100)  NOT NULL,
    RATING        INT           DEFAULT 0,
    CONTENT       VARCHAR(300)  NOT NULL,
    UPLOAD_DT     TIMESTAMP     DEFAULT NOW(),
    FOREIGN KEY (POST_ID) REFERENCES POST(POST_ID) ON DELETE CASCADE,
    FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) ON DELETE CASCADE
);

# 누가 게시물 찜했는지 USER_ID , 어떤 게시물을 찜했는지 POST_ID 컬럼 필요(post 테이블은 user 테이블과 연관성이 없기 때문)
CREATE TABLE BOOKMARK(
    BOOKMARK_ID BIGINT       PRIMARY KEY AUTO_INCREMENT,
	USER_ID     VARCHAR(100) NOT NULL,
	POST_ID     BIGINT       NOT NULL,
	REG_DT      TIMESTAMP    DEFAULT NOW(),
	FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID) ON DELETE CASCADE,
    FOREIGN KEY (POST_ID) REFERENCES POST(POST_ID) ON DELETE CASCADE
);

CREATE TABLE ADMIN(
	ADMIN_ID       VARCHAR(100) PRIMARY KEY,
	ADMIN_PASSWD   VARCHAR(100) NOT NULL,
	ROLE           VARCHAR(20)  DEFAULT 'admin',
	JOIN_AT        TIMESTAMP    DEFAULT NOW()
);

INSERT INTO ADMIN(ADMIN_ID , ADMIN_PASSWD) VALUES ('sominKim' , '@muksullangSomin!');
INSERT INTO ADMIN(ADMIN_ID , ADMIN_PASSWD) VALUES ('admin1004' , '@muksullangAdmin!');
