# web_backend
## **🔥 목표**

- 독립 (생각하는 것을 코드로 )
- 신입 개발자 이상 ( 실력, 가능성 )

## 📆 기간

24.01 ~ 24.06

## 🏃 과정

- 자바 + 프로그래밍 훈련, 디버깅, 소스 관리 ( 형성, 버전 관리 )
- 자바 ( 객체 지향 ) + 프로그래밍 훈련
    
    cs ( 컴퓨터 사이언스: 네트워크, 리눅스, 자료구조 )
    
- **웹 관련 언어 ( html, css, js + jquery)**
    
    RDB ( 관계형 데이터베이스 > MySQL )
    
- 백엔드 관련 ( JSP 발전 과정 )
    
    → 추가 : 마이바티스, JPA, Model And View, rest api
    
- 클라우드, 문서화 > 포트폴리오
    
    Amazon > AWS

## 📖 Study - web

### html (HyperText Markup Language)

- **HTML 기본 구조**
    
    ```html
    <!DOCTYPE html> 						<!-- 현재 웹 문서가 어떤 HTML 버전에 맞게 작성되었는지를 알려준다.  -->
    <html>									<!-- html문서는 <html>과</html>로 둘러싸인다. 브라우저에게 이 파일의 내용이 HTML이라고 선언한다.  -->
    <head> 									<!-- 
    											헤드는 <head>와</head>태그로 구성된다. 
    											웹 페이지에 대한 언어,문서의 제목등 정보를 저장하고 있는 곳이다.
    									 	-->
    
    										<!--  주석 (comment) : 나중에 HTML 소스를 열어보았을 때 소스를 쉽게 이해할 수 있도록 붙여넣는 설명글 -->
    
    <meta charset="UTF-8">					<!-- 웹 페이지를 만들 때 필요한 정보(메타 정보) 지정 -->
    <title>html문서_기본구조</title>  		<!-- 웹페이지의 제목은 브라우저의 제목으로 표시된다. -->
    </head>
    
    <body> 									<!-- 웹페이지의 모든 내용이 여기에 표시된다. 브라우저 안에 표시되는 부분이다. -->
    	안녕하세요!
    </body>
    
    										<!-- 
    										
    											# 개발자 도구 확인 방법
    											
    											1) Chrome맞춤설정 및 제어 > 도구 더보기 > 개발자도구 클릭
    											2) ctrl + shift + i 
    											3) F12
    											
    										-->
    
    </html>
    ```
    
- **태그(tag)와 요소(elements)**
    - **태그 (tag)**
        - 태그는 대부분 여는 태그와 닫는 태그로 이루어진다. 하지만 <img> <br>처럼 닫는 태그가 없는 경우도 있다.
        - 태그는 대소문자를 구별하지 않는다. 하지만 **태그와 속성은 모두 소문자**로 쓰는 것이 일반적이다.
        - 빈 공백은 한 칸만 인식한다.
        - 태그 안에 다른 태그를 포함 시킬 수 있다. 열고 닫는 태그를 순서와 짝이 맞게 지켜주어야 한다.
        - 태그 안에 속성을 사용할 수 있다. 태그마다 속성과 속성값이 다르므로 필요에 따라 속성을 익힌다.
    - **요소 (elements)**
        - 요소는 시작태그와 종료태그로 이루어진 문서의 구성 요소이다.
        - 요소 : (시작태그 + contents + 종료태그)
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 태그(tag) 와 요소 (element)</title>
        </head>
        <body>
        Big flows big flows
        큰 걸음을 걷지
        They soft they soft
        난 멋있고 싶지
        For sure for sure
        우린 하나였지
        East to the south to the north to the west side
        We RIIZE
        
        	<!-- hr태그 : 선을 표시하는 태그(한 줄) -->
        <hr>
        <hr/>
        
        <!-- br태그 : 개행 태그 -->
        Big flows big flows <br>
        큰 걸음을 걷지<br>
        They soft they soft<br>
        난 멋있고 싶지<br>
        For sure for sure<br />
        우린 하나였지<br />
        East to the south to the north to the west side<br />
        We RIIZE<br />
        <hr>
        
        <!-- 
        	
        		웹에서의 띄어쓰기는 한칸이며 그 이상의 띄어쓰기는 아래의 표현식을 사용한다.
        	
        		&nbsp;	>  한 칸 띄어쓰기
        		&ensp;	>  두  칸 띄어쓰기
        		&emsp;  >  세칸 띄어쓰기
        	
        	 -->
        	I            will           lay         me          down <br>
        	I &nbsp;will &nbsp;lay &nbsp;me &nbsp;dowm <br>
        	I &ensp;will &ensp;lay &ensp;me &ensp;dowm <br>
        	I &emsp;will &emsp;lay &emsp;me &emsp;dowm <br>
        	<hr>
        	
        	<!-- 헤딩(heading)은 웹페이지에서 머리기사 역할을 한다. -->
        	<h1> heading 1입니다. </h1>	<!-- br을 쓰지 않아도 밑에 칸으로 내림-->
        	<h2> heading 2입니다. </h2>
        	<h3> heading 3입니다. </h3>
        	<h4> heading 4입니다. </h4>
        	<h5> heading 5입니다. </h5>
        	<h6> heading 6입니다. </h6>
        	<hr>
        	
        	<!-- 단락(paragraph)은 하나의 토막을 의미하며, 웹브라우저가 <p>태그 앞뒤에 빈줄을 추가한다.(간격이 생기게 함) -->
        	<p>하나의 단락입니다</p>	<!-- br을 쓰지 않아도 밑에 칸으로 내림-->
        	<p>
        		하나의 단락입니다	<!-- 같이 쓰이는 경우는 밑에 칸으로 가지 않고 연결되게 나옴 -->
        		하나의 단락입니다
        		하나의 단락입니다
        	</p>
        	
        </body>
        </html>
        ```
        

- **리스트 (List)**
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>리스트</title>
    </head>
    <body>
    <!-- 
    	
    		# ul 태그
    	 
    		- 번호 없는 리스트 (unordered lists) 태그는  
    		  <ul></ul>태그로 리스트를 생성하며 
    		  <li></li> 태그로 리스트의 요소를 나타낸다.
    	 
    	 -->
    	 <ul>			<!-- 리스트의 시작 -->
    		<li>아메리카노</li>	<!-- 리스트의 요소 -->
    		<li>카푸치노</li>
    		<li>카라멜마끼아또</li>
    		<li>돌체라떼</li>
    		<li>자바칩</li>
    	</ul>			<!-- 리스트의 종료 -->
    	
    	<!-- 
    		
    		# ol 태그
    	 
    		- 번호 있는 리스트 (ordered lists) 태그는  
    		  <ol></ol>태그로 리스트를 생성하며 
    		  <li></li> 태그로 리스트의 요소를 나타낸다.
    		 
    	-->
    	<ol>			<!-- 리스트의 시작 -->
    		<li>아메리카노</li>	<!-- 리스트의 요소 -->
    		<li>카푸치노</li>
    		<li>카라멜마끼아또</li>
    		<li>돌체라떼</li>
    		<li>자바칩</li>
    	</ol>			<!-- 리스트의 종료 -->
    	
    	</body>
    </html>
    ```
    
    **+) 리스트 응용 - 리스트 안에 리스트가 들어가 있는 구조**
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>깊이가 있는 리스트</title> <!--리스트 안에 리스트가 들어가 있는 형태-->
    </head>
    <body>
    	<ul>
    		<li>국세신고안내</li>
    			<ul>
    				<li>개인신고안내
    					<ul>
    						<li>종합소득세</li>
    						<li>주책임대소득</li>
    						<li>연말정산</li>
    					</ul>
    				</li>
    				<li>법인신고안내
    					<ul>
    						<li>법인세</li>
    						<li>부가가치세</li>
    						<li>원천세</li>
    					</ul>
    				</li>
    			</ul>
    		<li>국세정책/제도</li>
    		<li>정보공개</li>
    	</ul>
    </body>
    </html>
    ```
