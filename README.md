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
    
    **RDB ( 관계형 데이터베이스 > MySQL )**
    
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

- **semantic**
    - **블록 요소 (Block Element)**
        - 블록 요소는 모든 인라인 요소를 포함할 수 있고 다른 블록 요소도 포함 할 수 있다.
        - 기본적으로 가로폭 전체의 넓이를 가지는 직사각형 형태가 되며 그리고 블록 요소 다음에는 줄바꿈이 이루어 진다.
            
            Ex) div태그 , h1 ~ h6태그 , p태그
            
    - **인라인 요소 (Inline Element)**
        - 인라인 요소는 항상 블록 요소 안에 포함되어 있으며 인라인 요소 안에 다른 인라인 요소가 포함될 수 있다.
        - 컨텐츠 시작점과 끝나는 지점까지를 넓이로 가지게 된다.
        - 인라인 요소 다음에는 줄바꿈이 없고 우측으로 바로 이어서 표시가 된다.
            
            Ex) span태그 , a태그 , strong태그 , em태그
            
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <title>블록요소 , 인라인요소</title>
    <meta charset="UTF-8">
    </head>
    <body>
    
    	<!-- 블록 요소 예시 -->
    	<h1>h1캐그 입니다.</h1> 중간데이터
    	<p>p태그 입니다.</p> 중간데이터
    	
    	<hr>
    	<!-- 인라인 요소 예시 -->
    	<img src="../images/programmer.png"> 중간데이터
    	<a href="#">a태그 입니다.</a> 중간데이터
    	<strong>string태크 입니다.</strong> 중간데이터
    	
    </body>
    </html>
    ```
    
    - **div (Division Element)태그 & span (Span Element) 태그**
        - **div**
            - <div>요소는 블록 수준의 요소로서 html 요소를 묶는 컨테이너로 사용할 수 있다.
            - <div>자체로는 특별한 의미가 없다. 블록 수준 요소이기 때문에 하나의 줄을 전부 차지한다.
            - css와 함께 사용하면 대량의 내용에 대해서 스타일을 설정할 때 유용하게 사용할 수 있다.
        - **span**
            - <span>요소는 인라인 요소로서 텍스트를 위한 컨테이너로 사용할 수 있다.
            - 인라인 요소는 자신이 필요한 크기만 차지하는 요소이다.
            - <span>자체로도 특별한 의미가 없다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>div , span</title>
        </head>
        <body>
        	
        	<div style="height: 70px; background-color: yellow;">
        		헤더(head) 입니다.
        	</div>
        	<div style="height: 200px; background-color:  orange;">
        		컨텐츠(body, content) 입니다.
        	</div>
        	<div style="height: 50px; background-color: red;">
        		푸터(foot) 입니다.
        	</div>
        	
        	<hr>
        	
        	<span style="color: blue;">*</span> 필수 입력 데이터 입니다.<br>
        	동의하시겠습니까? <span style="color: red;">(선택)</span>
        	
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

- **이미지 & 비디오**
    - **이미지(image) 태그**
        - img 태그는 이미지를 웹페이지에 표시할 때 사용한다.
        - **src속성**은 이미지 파일 이름을 지정한다.
        - **alt 속성**은 브라우저가 화면에 표시하지 못했을 경우에 표시되는 대체 텍스트(alternate text)이다.		
        alt 속성의 대체 텍스트값은 이미지와 동등한 정보를 제공해야 한다.
        - **width , height 속성**은 각각 이미지의 가로 , 세로 크기를 나타낸다.
        - width , height 속성을 지정하지 않을 경우 기본 이미지의 크기로 브라우저에 이미지가 적재된다.
        - width , height 속성의 기본적인 단위는 픽셀이다. %단위를 사용하여 브라우저의 크기에 비례하여 상대적으로 이미지의 크기를 지정할 수 있다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>이미지 태그</title>
        </head>
        <body>
        
            <h2>애플</h2>
        	<img src="apple.jpg" width="200" height="200">
        	<img src="apple.jpgㅋㅋ" alt= "애플이미지" width="200" height="200">
        	<img src="apple.jpg" width="10%" height="10%">
             
        </body>
        </html>
        ```
        
    - **이미지 경로**
        - **절대경로**
            - 웹서비스를 이용할수 있는 웹서비스의 절대경로를 모두 작성한다.
            - C 드라이브로 들어오는 것이 아닌 웹으로 들어오는 걸 의미
                
                예시) [http://도메인명](http://xn--hq1bm8jhe834c/):포트번호/폴더명/이미지명 
                
        - **상대경로**
            - 현재 위치한 html파일을 기준으로 파일의 경로를 작성한다.
            - 현재 위치 html파일과 같은 폴더에 있을 경우 아래의 두 방법 중 1가지를 선택하여 이미지의 경로를 작성한다.
            - 현재 html보다 **상위경로**에 위치했을 경우 아래와 같이 이미지의 경로를 작성한다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>이미지의 경로</title>
        </head>
        <body>
        	
        	<h3>클라이언트가 요청하는 이미지의 절대 경로</h3>
        	<img src="http://localhost:8080/11_web_basic/01_HTML5/chapter04_image/apple.jpg">
        	
        	<h3>클라이언트가 요청하는 이미지의 상대 경로</h3>
        	<img src="apple.jpg">
        	<img src="./apple.jpg">
        	<img src="apple.jpg">
        </body>
        </html>
        ```
        
    
    - **비디오 (video)**
        - 비디오 파일의 위치는 src속성으로 지정한다. 위치 경로지정방식은 이미지,오디오와 동일하다.
        - 비디오 태그는 브라우저별로 속성 및 기능 동작의 차이가 크다.
        - 브라우저가 해당 비디오를 지정하는지 반드시 확인해야 한다. 여러 가지 파일형식을 동시에 제공하면 된다
        - **[ 비디오 속성 ]**
            
            **autoplay** : 비디오를 자동적으로 재생
            
            **controls** : 비디오 재생을 제어하는 제어기를 표시
            
            **loop**     : 비디오를 반복하여 재생
            
            **preload**  : 사용자가 사용할 생각이 없더라도 비디오를 미리 다운로드한다.
            
            **poster**   : 비디오를 다운로드 하는 중일 때 표시되는 이미지.
            
            **muted**    : 비디오의 오디오 출력을 중지한다.
            
            **src**      : 재생할 오디오가 존재하는 URL을 지정한다.
            
            **width**    : 비디오 재생기의 너비를 나타낸다.
            
            **height**   : 비디오 재생기의 높이를 나타낸다.	
            
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>비디오</title>
        </head>
        <body>
        
          	<h3>기본 모델 예시</h3>
        	<video src="asset/media/trailer.mp4" controls width = "100%"></video> <!--비디오를 실행하려면 controls를 넣어줘야함  -->
        	<video src="./asset/media/trailer.mp4" controls width = "100%"></video>
        	
        	<h3>poster속성 적용 예시</h3> <!-- 썸네일 느낌 -->
        	<video src="asset/media/trailer.mp4" poster="apple.jpg" controls width = "500"></video>
        
        </body>
        </html>
        ```
        

- **링크 (link)**
    - 하이퍼 링크(링크)는 다른 문서로 점프할 수 있는 단어 혹은 이미지이다.
    - **<a>태그**가 하이퍼 링크를 정의한다.
    - <a>요소의 가장 중요한 속성은 **href 속성**이다. href 속성은 링크의 목적지를 나타낸다.
    - 사용자가 커서를 웹 페이지의 링크 위에 올려 놓으면 커서의 모양이 화살표에서 손모양으로 변한다.
    - **링크의 경로**
        
        **1) 절대 경로** href="http://www.google.com/" **다른 웹 사이트의 페이지** 
        
        **2) 상대경로**  href="../doc/info.html"                **웹 사이트 안에서의 다른 페이지**
        
        **3) 내부 파일** href="#anchor1"			  **현재 페이지 안의 다른 위치**
        
    - **target 속성**
        
       **_blank**  : 새로운 윈도우에서 새로운 페이지를 연다.
        
        **_self**   : 현재 윈도우에 새로운 페이지를 적재한다. [기본값으로 생략 가능하다.]
        
        **_parent** : 부모 프레임에 새로운 페이지를 적재한다.
        
        **_top**    : 최상위 프레임에 새로운 페이지를 적재한다.
        
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>링크</title>
    </head>
    <body>
    	
    	<p><a href="http://www.google.com/" target="_self">구글로 이동1</a></p>
    	<p><a href="http://www.google.com/" target="_blank">구글</a>로 이동2</p>
    	
    	<p><a href="../chapter04_image/imageEx01.html">imageEx01.html로 이동</a></p>
    	
    	<a href="https://www.apple.com"><img src="../chapter04_image/apple.jpg" width="200"></a>
    	
    </body>
    </html>
    ```
    
    **+) 링크(link) 메뉴**
    
    - <a>태그를 사용해 사용자를 현재 페이지의 다른 위치로 이동 시킬 수 있다.
    - 웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여 놓고  그 위치로 이동하는 링크를 만들 수 있는데 이 기능을 **앵커**(anchor)라고 한다.
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>링크2</title>
    </head>
    <body>
    	
    	<h1>앵커 만들기</h1>
    	
    	<ul id ="menu">
    		<li><a href="#content1">메뉴1</a></li> 	<!-- 클릭이 되면 문서 내의 id가 content1인 곳으로 화면이 이동한다. (#을 써주기)-->
    		<li><a href="#content2">메뉴2</a></li>
    		<li><a href="#content">메뉴3</a></li>
    		<li><a href="linkEx02_메뉴.html#content4">메뉴4</a></li> <!-- 클릭이 되면 문서 LinkEx02_메뉴.html파일의 id가content4인 곳으로 이동한다. -->
    		<li><a href="linkEx02_메뉴.html#content5">메뉴5</a></li>
    	</ul>
    	
    	
    	<h2 id="content1">내용1</h2>	<!-- content1의 위치를 id를 사용해 정의한다. -->
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	
    	<p><a href="#menu">[메뉴로]</a></p>
    	
    	
    	<h2 id="content2">내용2</h2>	<!-- content2의 위치를 정의한다. -->
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	
    	<p><a href="#menu">[메뉴로]</a></p>
    	
    	
    	<h2 id="content3" >내용3</h2>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	
    	<p><a href="#menu">[메뉴로]</a></p>
    	
    </body>
    </html>
    ```
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>링크2_메뉴</title>
    </head>
    <body>
    
    	<h2 id="content4">내용4</h2>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	
    	<p><a href="linkEx02.html#menu">[메뉴로]</a></p>
    	
    	<h2 id="content5">내용5</h2>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	<p>웹 문서가 너무 길 경우 필요한 곳마다 문서 안에 이름을 붙여놓고 그 위치로 한번에 이동하는 링크를 만들 수
    		있는데, 이 기능을 앵커(anchor)라고 합니다.</p>
    	
    	<p><a href="linkEx02.html#menu">[메뉴로]</a></p>
    </body>
    </html>
    ```

- **form**
    - **form 태그**
        - 입력양식은 <form>태그로 시작 하고 </form>태그로 마무리 한다.
        - **action속성**에 입력을 처리하는 서버의 경로(목적지)를 적어준다.
        - **method속성**에 입력 데이터가 서버로 전송되는 방법(어떻게 보낼지 방법)을 기술한다. GET과 POST 방식이 있고 default(생략)방식은 GET방식이다.
        - name속성은 입력 데이터의 이름으로 서버로 전송된다.
            
            **1) GET방식** : URL주소 뒤에 파라미터를 붙여서 데이터를 전달하는 방식.
            
                           ? 기호 앞은 URL주소가 되고
            
                           ? 기호 뒤에 오는 값들이 서버로 전달되는 파라미터 값이 된다.
            
            **2) POST방식** : 사용자가 입력한 데이터를 URL 주소에 붙이지 않고
            
                             HTTP Request 헤더에 포함 시켜서 전송하는 방식이다.
            
        - **submit 타입**
            - 제출 버튼은 데이터를 서버로 전송하는데 사용된다.
            - 데이터는 name1=Value1&name2=value2형태로 action속성에 지정된 url로 전송된다.
            - (참고) reset 타입 : form태그에 속해 있는 태그의 값을 초기화 한다.
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>form 태그</title>
    </head>
    <body>
    
    	<form action="#" method="post">	<!-- #은 실제로 아무것도 하지 않음 -->
    		<h3>로그인</h3>
    		<p> 아이디  : <input type="text"></p>
    		<p> 패스워드 : <input type="password" ></p>
    		<p><input type="submit"></p>
    	</form>
    	
    </body>
    </html>
    ```
    
    - **form 기초**
        - **fieldset**
            - 입력요소를 그룹핑하는데 사용되는 태그이다.
            - fieldset 요소 안에는 다양한 입력 요소를 넣을 수 있으며 그룹의 경계에 선을 그려준다.
            - <legend> 태그를 사용하면 그룹에 제목을 붙일 수 있다.
        - **label**
            - label태그는 <input>요소를 위한 레이블을 정의한다.
            - label태그의 속성 for를 사용하면 레이블과 input 요소를 서로 연결 할 수 있다.
            - 마우스로 label을 클릭해도 input요소를 클릭한 것과 똑같은 효과를 낸다.
            - 명시적 레이블과 암묵적 레이블로 구현 가능하다.
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>form 기초</title>
    <body>
    
        <form>
    		<fieldset>
    			<legend>개인정보 입력</legend>
    			<!--명시적 레이블-->
    			<p><label for="userId">아이디 :</label> <input type="text" id="userId"></p>
    			<p><label for="userName">이름 :</label> <input type="text" id="userName"></p>
    			<!--암묵적 레이블-->
    			<p><label>주소 : <input type="text"></label> </p>
    			<p><label>연락처 : <input type="text"></label></p>
    			
    		</fieldset>
    	</form>
    </body>
    </html>
    ```
    
    - **input 타입 및 태그**
        - **text 타입**
            - 가장 일반적이며 많이 사용되어지는 입력 요소의 유형이다.
            - 기본 길이는 20글자이며 **size 속성으로 필드의 크기를 변경**할 수 있다.
            
            **[ 추가 속성 ]**
            
            **autocomplete** : 자동으로 입력을 완성한다.
            
            **autofocus**        : 페이지가 로드 되면 자동으로 입력 포커스를 갖는다.
            
            **placeholder**     : 입력 힌트를 필드에 희미하게 보여준다.
            
            **readonly**          : 읽기 전용 필드
            
            **required**          : 입력양식을 제출하기 전에 반드시 채워져 있어야 함을 나타낸다.
            
            **pattern**            : 허용하는 입력의 형태를 정규식으로 지정한다.
            
            **maxlength**	: 입력값의 최대 자리수 지정
            
            **disabled**          : 데이터 전송 불가 지정 필드
            
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
        
        	<h3>text type</h3>
        	<form>
        		<p>상품코드 : <input type="text" required></p>
        		<p>상품이름 : <input type="text" required autofocus></p>
        		<p>상품수량 : <input type="text" maxlength="3" size="3"></p>
        		<p>상품정보 : <input type="text" placeholder="선택사항입니다."></p>
        		<p>담당자코드 : <input type="text" value="manager1" disabled></p>
        		<p>담당자이름 : <input type="text" value="000부장" readonly></p>
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **password 타입**
            - 패스워드 필드를 정의한다.
            - 사용자가 입력한 글자는 보이지 않는다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
        
        	<h3>password type</h3>
        	<form>
        		<p>패스워드 : <input type="password"></p>
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **radio 타입**
            - 여러 항목 중에서 **하나만** 선택할 수 있다.
            - **name이 같아야** **동일한 그룹**으로 취급이 된다.
            
            → name을 다르게 정해주면 여러개 항목 선택 가능
            
            - 선택된 라디오 버튼의 value값이 name=value 형태로 전달이 된다.
            
            **→ name이 있어야 value를 사용할 수 있음**
            
            - **checked 속성**을 이용해 엘리먼트를 직접 선택할 수 있다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
        
        	 <h3>radio type</h3>
        	<form>
        		<input type="radio" name="month" value="1"> 1개월
        		<input type="radio" name="month" value="2"> 2개월
        		<input type="radio" name="month" value="3" checked> 3개월
        		<input type="radio" name="year" value="4"> 4개월
        		<input type="radio" name="year" value="5"> 5개월
        		<input type="radio" name="year" value="6"> 6개월
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **checkbox 타입**
            - 체크박스는 사용자가 여러 항목을 동시에 선택할 수 있다.
            - **radio type과 같이 name 속성이 동일**해야 된다.
            - radio type과 같이 **checked 속성**을 지정할 수 있다.
            - radio type과 같이 name=value형태로 데이터가 전송된다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
        	<h3>checkbox type</h3>
        	<form>
        		<input type="checkbox" name="month" value="1" checked> 1개월
        		<input type="checkbox" name="month" value="2"> 2개월
        		<input type="checkbox" name="month" value="3" checked> 3개월
        		<input type="checkbox" name="year" value="4"> 4개월
        		<input type="checkbox" name="year" value="5"> 5개월
        		<input type="checkbox" name="year" value="6"> 6개월
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```

        - **button 타입 & 태그**
            - 일반적인 버튼은 input type="button"으로 생성하는 방법과 button태그로 생성하는 방법이 있다.
            - 버튼과 같이 자주 사용되는 onclick()함수는 버튼이 클릭되면 동작하는 함수이다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
        	<h3>button type & tag </h3>
        	<form>
        		<p><input type="button" value="로그인"></p>
        		<p><button>로그인</button></p>
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **textarea 태그**
            - 여러 줄의 텍스트를 입력 받을 때 사용하는 태그.
            - 영역의 크기는 **rows와 cols**로 설정한다.
            - 사용자가 초기 공간보다 더 많은 텍스트를 입력하면 자동으로 스크롤바가 생성된다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <body>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        	<h3>textarea tag</h3>
        		<form>
        			<textarea rows="10" cols="30" name="textarea1"></textarea>
        			<textarea rows="10" cols="30" name="textarea2">초기값은 이곳에 작성</textarea>
        			<textarea rows="10" cols="30" name="textarea3" placeholder="100자 이내로 작성하세요." maxlength="100">초기값은 이곳에 작성</textarea>
        			<p><input type="submit"></p>
        		</form>
        		
        </body>
        </html>
        ```
        
        - **file 타입**
            - 사용자가 파일을 선택해서 서버로 업로드해야 하는 경우 사용한다.
            - 웹 브라우저마다 다르게 구현되고 있다.
            - form의 메서드 전송 방식이 반드시 post이어야 하며 enctype="multipart/form-data" 속성을 반드시 지정해야 한다.
            - multiple 속성을 지정하면 여러 개의 파일을 업로드 할 수 있다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
         <h3>file type</h3>
        
        	<form method="post" enctype="multipart/form-data">
        		<p>파일1 : <input type="file"></p>
        		<p>파일2 : <input type="file" ></p>
        		<p>파일 멀티플 : <input type="file" multiple name="files"></p>
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **hidden 타입**
            - 사용자는 볼 수 없고 서버로 데이터를 전송하고 싶을 때 사용 한다.
            - hidden 요소의 name과 value값이 서버로 전달된다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
         <h3>hidden type</h3>
        	<form>
        		<p>아이디 : <input type="text" name="userId"></p>
        		<input type="hidden" name="isPC" value="true">
        		<input type="hidden" name="iTime" value="2024-03-13">
        		<input type="hidden" name="bowserCd" value="chrome">
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **date 타입**
            - 사용자로 하여금 날짜를 선택하게 한다.
            - **min,max속성**을 사용해 특정 기간에서만 날짜를 선택하도록 할 수 있다.
            - 전송되는 데이터의 타입은 Date 타입이 아니라 **String 타입으로 전송된다!!**
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
         <h3>date type</h3>
        	<form>
        		<p>예약일1 : <input type="date" name="date1"></p>
        		<p>예약일2 : <input type="date" name="date2" value="2024-03-13"></p>
        		<p>예약일3 : <input type="date" name="date3" value="2024-03-13" min="2024-03-13" max="2024-03-31"></p>
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **number 타입**
            - 정수를 입력받을 수 있다.
            - 브라우저에 따라서 다르게 표시된다.
            
            **[ 속성 ]**
            
            value     : 초깃값
            
            step	  : 증감 숫자
            
            min , max : 최소값, 최대값
            
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
         <h3>number type</h3>
        	<form>
        		<p>주문수량 : <input type="number" name="orderQty"></p>
        		<p>신발사이즈 선택1 : <input type="number" name="size1" value="230" step="5"></p>
        		<p>신발사이즈 선택2 : <input type="number" name="size1" value="230" step="10" min="220" max="270"></p>
        		<p><input type="submit"></p>
        	</form>
        	
        </body>
        </html>
        ```
        
        - **email 타입**
            - 모습은 text타입과 비슷하지만 이메일에 유효한 주소를 검사한다.
            - 유효값 확인은 submit을 클릭할 경우에 진행된다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>input 타입 및 태그</title>
        </head>
        <body>
         <h3>email type</h3>
        	<form>
        		<p><input type="email" name="email"></p>
        		<p><input type="submit"></p
        	</form>
        	
        </body>
        </html>
        ```

- **테이블(table)**
    - **테이블**
        - 표를 만들어주는 HTML태그
        - 테이블의 기본적인 구성 요소로 table , tr(table row) , td(table data) 태그가 있다.
            
            **table**	: 테이블을 생성하는 태그
            **tr**    : 하나의 행을 나타내며 행과 열의 수는 제한이 없다.
            **td**    : 행 안에 속한 열 태그
            
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>테이블 기초</title>
        </head>
        <body>
        
        		<h3>표 만들기 (1행 1열)</h3>
        		<table border="1">
        			<tr>
        				<td>1행 1열</td>
        			</tr>
        		</table>
        		
        		<hr>
        		
        		<h3>표 만들기(1행 2열)</h3>
        		<table border="1">
        			<tr>
        				<td>1행 1열</td>
        				<td>1행 2열</td>
        			</tr>
        		</table>
        		
        		<hr>
        		
        		<h3>표 만들기(2행 1열)</h3>
        		<table border="1">
        			<tr>
        				<td>1행 1열</td>
        			</tr>
        			<tr>
        				<td>2행 1열</td>
        			</tr>
        		</table>
        		
        		<h3>표 만들기(2행 2열)</h3>
        		<table border="1">
        			<tr>
        				<td>1행 1열</td>
        				<td>1행 2열</td>
        			</tr>
        			<tr>
        				<td>2행 1열</td>
        				<td>2행 2열</td>
        			</tr>
        		</table>
        </body>
        </html>
        ```
        
    - **테이블 관련 태그 및 속성**
        
        **[ 태그 ]**
        
        **caption :** 테이블에 제목을 중앙 정렬로 표시한다.
        
        **th :** 헤더 효과(글자크기, 진하게, 가운데정렬)의 기능을 한다.
        
        **thead , tbody , tfoot : 관리 문법**
        
        thead : 표의 머리
        tbody : 표의 본문
        tfoot : 표의 바닥
        
        - sementic tag : 문서의 의미를 만들어 주는 구조
        - CSS , Javascript , Jquery로 타겟을 지정하는 부분에 용이하다.
        - thead요소에는 관용적으로 <th>태그를 사용한다.
        
        **colgroup , col** : 열의 구조적인 그룹화를 하기 위해 사용한다.
        
        **[ 속성 ]**
        
        **border** 		: 테이블의 테두리
        
        **bordercolor**     : 테이블의 테두리 색상 
        
        **width** 		: 테이블 가로 크기
        
        **height**  	        : 테이블 세로 크기
        
        **align** 		: 정렬
        
        **bgcolor** 	        : 배경색
        
        **colspan** 	        : 가로 합병(열 합병)
        
        **rowspan** 	        : 세로 합병(행 합병)
        
      
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>테이블 관련 태그 및 속성</title>
        </head>
        <body>
        	
        	<table border="1">
        		<caption>거래처 리스트</caption>
        		<colgroup>
        			<col style="background-color:springgreen">
        			<col style="background-color: yellow">
        			<col style="background-color: pink">
        		</colgroup>
        		<thead>
        			<tr>
        				<th>코드</th>
        				<th>거래처명</th>
        				<th>사업자(주민)번호</th>
        			</tr>
        		</thead>
        		<tbody align="center">
        			<tr>
        				<td>0000102</td>
        				<td>광산산업</td>
        				<td>129-44-00510</td>
        			</tr>
        			<tr>
        				<td>0000157</td>
        				<td>법원</td>
        				<td></td>
        			</tr>
        			<tr>
        				<td>0000182</td>
        				<td>일월산업</td>
        				<td>120-01-11111</td>
        			</tr>
        		</tbody>
        		<tfoot align="right">
        			<tr>
        				<td>폐업 0</td>
        				<td>휴업 14</td>
        				<td>오류 2</td>
        			</tr>
        		</tfoot>
        	</table>
        	
        </body>
        </html>
        ```
        
    - **테이블 셀 병합**
        - **colspan :** 컬럼(열)들을 병합한다.
        - **rowspan** : 로우(행)들을 병합한다.
        
       
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>테이블 셀 병합</title>
        </head>
        <body>
        
        	<h3>열 합치기</h3>
        	<table border="1">
        		<tr>
        			<td colspan="3" align="center">부가세 유형별 요약</td>
        			
        		</tr>
        		<tr>
        			<td>부가세유형코드</td>
        			<td>금액</td>
        			<td>세액</td>
        		</tr>
        		<tr>
        			<td>10152</td>
        			<td>70,000,000</td>
        			<td>7,000,000</td>
        		</tr>
        		<tr>
        			<td colspan="2">합계</td>
        		</tr>
        	</table>
        	
        	<hr>
        	
        	<h3>행 합치기</h3>
        	<table border="1">
        		<tr>
        			<td rowspan="3">과세</td>
        			<td>세금계산서발급분</td>
        		</tr>
        		<tr>
        			<td>신용카드</td>   
        		</tr>
        		<tr>
        			<td>현금영수증</td>   
        		</tr>
        		<tr>
        			<td>기타</td>   
        			<td></td>   
        		</tr>
        	</table>
        	
        </body>
        </html>
        ```
        
    - **테이블 안의 엘리먼트**
        - 테이블 셀 안의 요소에는 다른 HTML요소를 넣을 수 있다.
        Ex) 리스트 , 이미지 , 파일 , 등등
    - **테이블 크기 조절**
        - height , width , align 옵션을 이용하여 크기를 조절할 수 있고 데이터를 정렬 할 수 있다.
        - align에는 center right left가 있음
        - CSS를 사용하면 중복되는 코드를 줄여 훨씬 간단하고 효율적으로 구현할 수 있다.
        
       
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>테이블 크기 조절</title>
        </head>
        <body>
        
        	<table border="1">
        		<tr height="80">
        			<td colspan="2" align="center" width="400">자금출납장</td>
        		</tr>
        		<tr height="40" align="center">
        			<td>거래처</td>
        			<td>(주)한국통신</td>
        		</tr>
        		<tr height="40">
        			<td align="center">입금</td>
        			<td align="right">1,000,000</td>
        		</tr>
        		<tr height="40">
        			<td align="center">출금</td>
        			<td align="right">330,000</td>
        		</tr>
        	</table>
        	
        	
        </body>
        </html>
        ```

### CSS (Style Sheet) > 디자인 적용 

- **기초**
    - **인라인 스타일시트**
        - 각각의 요소마다 스타일을 지정하는 것
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>인라인 스타일 시트</title>
    </head>
    <body>
    
    	<h1 style="color: red">This is a headline1</h1>
    	<p style="color: blue">This is a paragraph1</p>
    	
    	<h1 style="color: red">This is a headline2</h1>
    	<p style="color: blue">This is a paragraph2</p>
    	
    	<h1 style="color: red">This is a headline3</h1>
    	<p style="color: blue">This is a paragraph3</p>
    	
    </body>
    </html>
    ```
    
    - **내부 스타일시트**
        - 한 페이지의 전체 스타일을 지정하는 법
        - head 내부에 style이라는 태그를 통해 지정할 수 있음
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>내부스타일 시트</title>
    <style>
    	h1 {color :green;}
    	p  {color :purple;}
    </style>
    </head>
    <body>
    
    	<h1>This is a headline1</h1>
    	<p>This is a paragraph1</p>
    	
    	<h1>This is a headline2</h1>
    	<p>This is a paragraph2</p>
    	
    	<h1>This is a headline3</h1>
    	<p>This is a paragraph3</p>
    	
    </body>
    </html>
    ```
    
    - **외부 스타일시트**
        - 전체 웹 페이지의 스타일을 하나의 스타일 파일로 변경할 수 있다.
        - css 파일을 만들어 그곳에서 스타일 설정을 해주고 head에서 링크로 연결해 줘야함
    
    ```html
    @charset "EUC-KR";
    
    h1 { color:deeppink;}
    p  { color:chartreuse;}
    ```
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>외부스타일 시트</title>
    <link href="myStyle.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    
    	<h1>This is a headline1</h1>
    	<p>This is a paragraph1</p>
    	
    	<h1>This is a headline2</h1>
    	<p>This is a paragraph2</p>
    	
    	<h1>This is a headline3</h1>
    	<p>This is a paragraph3</p>
    	
    </body>
    </html>
    ```
    
    >+) CSS(스타일시트)의 우선순위**
    >
    >1) 인라인 시트**
    >   
    >2) 내부스타일 시트**
    >   
    >3) 외부스타일 시트**
    
- **선택자 ( Selector )**
    - **Tag selector ( 태그 선택자 )**
        - html tag를 작성하여 선택한다.
        - **,** 를 이용하여 **복수의 태그**를 동시에 지정할 수 있다.
        
        **[ 선택자 형식 ]**
        
        **선택자 {
                    속성 : 값;
        }**
        
    
    ```html
    <!doctype html>
    <html>
    <head>
    <meta charset="utf-8">
    <title>태그 선택자</title>
    <style>
    
    	p {
    		background-color: blue;
    	}
    	h1 {
    		background-color: yellow;
    	}
    	
    	h2 , h3 {
    		background-color: red;
    	}
    	h4 , h5 , h6 {
    		background-color: green;
    	}
    	
    </style>
    </head>
    <body>
    
    	<p>This is a paragraph.</p>
    	<h1>This is a heading1.</h1>
    	<h2>This is a heading2.</h2>
    	<h3>This is a heading3.</h3>
    	<h4>This is a heading4.</h4>
    	<h5>This is a heading5.</h5>
    	<h6>This is a heading6.</h6>
    	
    </body>
    </html>
    ```
    
    - **Id selector**
        - html 태그 속성에 **id속성을 추가**한다.
        - css의 요소의 앞에 **#을 붙여서 id를 선택**한다.
        - 주로 자바스크립트 , 제이쿼리 선택자로 사용한다.
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="utf-8">
    <title>ID 선택자</title>
    <style>
    
    	#special1 {
    		background-color: deeppink;
    	}
    	#special2 , #special3{
    		background-color: skyblue;
    	}
    </style>
    </head>
    <body>
    
    	<p id="special1">id가 special1인 단락1입니다.</p>
    	<p id="special2">id가 special2인 단락2입니다.</p>
    	<p id="special3">id가 special3인 단락3입니다.</p>
    	
    </body>
    </html>
    ```
    
    - **Class selector**
        - 클래스 선택자는 css요소 앞에 **.을 이용해서 정의**된다.
        - id선택자는 하나의 요소만을 선택할 때 사용하며 클래스 선택자는 **추가로 여러 개의 요소를 한꺼번에 선택하여 사용**한다.
        - 주로 CSS 선택자로 사용한다.
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="utf-8">
    <title>Class 선택자</title>
    <style>
    
    	.type1 {
    		background-color: greenyellow;
    	}
    	.type2 , .type3 , .type4 {
    		background-color: lightpink;
    	}
    	
    	.add1 {
    		color:white;
    	}
    	.add2 {
    		font-family: cursive;
    	}
    	
    </style>
    </head>
    <body>
    
    	<h1 class="type1">class가 type1인 헤딩입니다.</h1>
    	<h1 class="type1">class가 type1인 헤딩입니다.</h1>
    	<h1 class="type1">class가 type1인 헤딩입니다.</h1>
    	<p class="type1">class가 type1인 단락입니다</p>
    	<p class="type2">class가 type2인 단락입니다</p>
    	<!-- 띄어쓰기를 사용하여 복수의 class를 적용할 수 있다. -->
    	<p class="type3 add1" >class가 type3인 단락입니다</p>
    	<p class="type4 add1 add2">class가 type4인 단락입니다</p>
    	
    </body>
    </html>
    
    ```
    
    - **속성 선택자 (attributes)**
        - 각각의 요소는 속성(attribute)를 가질 수 있으므로 속성 값을 이용하여 관련된 엘리먼트에 접근이 가능하다.
        
        
        ```html
        <!doctype html>
        <html>
        <head>
        <meta charset="utf-8">
        <title>속성 선택자(attributes)</title>
        <style>
        	
        	[type="text"] {
        		background-color: lightcoral;
        	}
        	[name="pwd"]{
        		background-color: green;
        	}
        	select[name="skillSelect"]{
        		background-color: wheat;
        	}
        	/*
        		[cols="30"]
        		[name="content"]으로 해도 가능/ rows, cols은 나중의 수정할 때 위험성이 큼
        	*/
        	[rows="10"]{
        		background-color: yellow;
        	}
        	
        </style>
        </head>
        <body>
        
        	<form>
        		<fieldset>
        			<p>id : <input type="text" name="id"></p>
        			<p>password : <input type="password" name="pwd"></p>
        			<p>skill select:
        				<select name="skillSelect">
        					<option>html</option>
        					<option>css</option>
        					<option>javascript</option>
        				</select>
        			</p>
        			<p>content:<br>
        				<textarea rows="10" cols="30" name="content"></textarea>
        			</p>
        		</fieldset>
        	</form>
        </body>
        </html>
        ```
        
    - **자식, 자손 선택자**
        - **자식 선택자**
            - **>**를 사용하여 선택한다.
            - 계층 구조의 바로 아래 속해 있는 자식요소를 선택한다.
            
            예시) s1 > s2 	:  s1의 직계자식 요소인 s2를 선택한다.
            
        - **자식 + 자손 선택자**
            - **띄어쓰기**를 사용하여 선택한다.
            - 계층 구조 하위에 있는 모든 요소를 선택한다.
            
            예시) s1 s2 	:  s1하위에 포함된 s2요소를 선택한다.
            
            - vs .type2 , p :는 class="type2"와 <p> 요소 선택
        
       
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="utf-8">
        <title>자식 , 자손 선택자</title>
        <style>
        	
        	/* '>'을 사용한 예시 */
        	.type1 > p {
        		color: gold;
        	}
        	.type1-2 > p {
        		color: red;
        	}
        	
        	.type2 {
        		color: green;
        	}	
        	.type2 p {
        		color: blue;
        	} 
        </style>
        </head>
        <body>
        	<div class="type1">
        		<div class="type1-1">
        			<h1>type1-1스타일의 h1태그</h1>
        		</div>
        		<div class="type1-2">
        			<p>type1-2스타일의 p태그</p>
        		</div>	
        		<div class="type1-3">
        			<p>type1-3스타일의 p태그</p>
        			<div class="type1-3-1">
        				<p>type1-3-1의 p태그</p>
        			</div>
        		</div>
        	</div>
        	
        	<hr>
        	
        	<div class="type2">
        		<div class="type2-1">
        			<h1>type2-1스타일의 h1태그</h1>
        		</div>
        		<div class="type2-2">
        			<p>type2-2스타일의 p태그</p>
        		</div>	
        		<div class="type2-3">
        			<p>type2-3스타일의 p태그</p>
        			<div class="type2-3-1">
        				<p>type2-3-1의 p태그</p>
        			</div>
        			<div class="type2-3-2">
        				<p>type2-3-2의 p태그</p>
        				<div class="type2-3-2-1">
        					<p>type2-3-2-1의 p태그</p>
        				</div>
        			</div>
        		</div>
        	</div>
        </body>
        </html>
        ```
        
    - **가상(의사) 클래스 ( Pseudo-Class )**
        - 선택자 뒤에 **:**(콜론)이 붙여 가상(의사)클래스로 사용한다.
        - 요소의 특정 상태나 위치에 따라 스타일을 정의하는 데 사용한다.
        - 가상(의사) 클래스를 사용하여 프런트앤드 코드 작성을 효과적으로 할 수 있다.
        - 가상(의사) 클래스의 선택자의 종류는 필요에 따라 구글링하여 학습한다.
        
        [예시]
        
        :active
      
        :hover
      
        :checked
      
        :focus
      
        :nth-child
        
        
        ```html
         <!doctype html>
        <html>
        <head>
        <meta charset="utf-8">
        <title>가상클래스</title>
        <style>
        
        	/* 사용 예시1 */
        	/* 리스트의 첫번째 요소*/	 li:first-child  {color :red;} /* first-child : 첫번째 요소 선택*/
        	/* 리스트의 두번째 요소*/	 li:nth-child(2) {color :blue;} /* nth-child() : n번째 요소 선택*/
        	/* 리스트의 세번째 요소*/	 li:nth-child(3) {color :orange;}
        	/* 리스트의 두번째 요소*/	 li:nth-child(4) {color :yellow;}
        	/* 리스트의 마지막 요소 */	 li:last-child   {color :greenyellow;} /* last-child : 마지막 요소 선택*/
        	
        	
        	/* 사용 예시 2 */
        	/* 테이블의 첫번째 tr */ 	tr:first-child  {background-color: lightyellow;}
        	/* 테이블의 3번째 tr */ 	tr:nth-child(3) {background-color: pink;}
        	/* 테이블의 5번째 tr */	tr:nth-child(5) {background-color: lightgreen;}	
        	/* 테이블의 7번째 tr */	tr:nth-child(7) {background-color: cornflowerblue;}	
        	/* 테이블의 마지막 tr */	tr:last-child   {background-color: plum;}
        	 	
        	 	
        	 /* 사용 예시 3 */
        	 /* 방문되지 않은 링크의 스타일 */ a:link      {color: red;}		
           /* 방문된 링크의 스타일 */		 a:visited     {color: green;}		
           /* 마우스가 위에 있을 때의 스타일 */	a:hover  {color: blue;}
           /* 마우스로 클릭되는 때의 스타일 */	a:active {color: yellow;}
        
        </style>
        </head>
        <body>
        
        	<ul>
        		<li>a</li>
        		<li>b</li>
        		<li>c</li>
        		<li>d</li>
        		<li>e</li>
        	</ul>
        	
        	<hr>
        	
        	<table border="1">
        		<tbody align="center">
        			<tr>
        				<td>정가</td>
        				<td>50,000원</td>
        			</tr>
        			<tr>
        				<td>판매가</td>
        				<td>45,000(10%할인)</td>
        			</tr>
        			<tr>
        				<td>포인트적립</td>
        				<td>3P 적립</td>
        			</tr>
        			<tr>
        				<td>포인트 추가적립</td>
        				<td>만원 이상 구매시 1,000P 추가 적립<br>5만원 이상 구매시 2,000P 추가 적립<br>편의점 배송 이용시 300P 추가 적립</td>
        			</tr>
        			<tr>
        				<td>발행일</td>
        				<td>2021-01-01</td>
        			</tr>
        			<tr>
        				<td>페이지 수</td>
        				<td>350쪽</td>
        			</tr>
        			<tr>
        				<td>ISBN</td>
        				<td>1234567-1234567</td>
        			</tr>
        			<tr>
        				<td>배송료</td>
        				<td>2,000원</td>
        			</tr>
        			<tr>
        				<td>배송안내</td>
        				<td>
        					[당일배송] 당일배송 서비스 시작!<br> 
        					[휴일배송] 휴일에도 배송받는 Bookshop
        				</td>
        			</tr>
        			<tr>
        				<td>도착예정일</td>
        				<td>지금 주문 시 내일 도착 예정</td>
        			</tr>
        		</tbody>
        	</table>
        		
        	<hr>
        	
        	<a href="http://www.naver.com" >마우스를 올려보세요</a>
        	
        </body>
        </html>
        ```

### Java Script(JS) + jQuery

- **자바 스크립트 생성 방법 (1) → 백앤드에서는 방법 (1) 사용!**
    - 자바 스크립트의 문법은 **<script> 태그** **사이**에서 작성한다.
    - <script>태그는 명령어가 실행되는 순서에 따라서 <head> 또는 <body>부분에 위치한다. (위치는 load와 관련됨)
    - 과거에는 <script type="text/javascript">로 태그를 생성하지만 html5에서는 기술하지 않아도 된다.
    - **[중요]**
        
        1) 자바스크립트의 오류는 화면에 별도의 오류 메세지가 출력 되지 않는다.
        
        2) 자바스크립트의 오류는 '웹 브라우저의 개발자 도구 console'에서 확인할 수 있으므로
        자바스크립트 코드 작성 시에는 항상 console화면을 확인하면서 개발한다.
        
    - 스크립트 코드가 웹 브라우저에 제대로 반영이 되지 않을 경우에는 웹브라우저에서 
    ctrl + f5 (캐쉬제거 새로고침)를 입력하여 변경된 결과를 확인한다.
    - **데이터 출력 함수**
        - **document.write() : 데이터를 브라우저 화면에 출력하는 함수**
        - **console.log() : 데이터를 F12 ‘브라우저 콘솔’에 출력하는 함수**
        - **alert() : 데이터를 ‘브라우저 안내창’으로 출력하는 함수**
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>자바스크립트 생성방법1</title>
    <script type="text/javascript">
    	
    	// 출력문 1) document.write() : 데이터를 브라우저 화면에 출력하는 함수(html)
    	document.write("<h1>데이터 출력</h1>");
    	document.write("<img src='../images/pic_1.jpg' width='300' height='300'>") // ()안에 기본적으로 ""를 사용하므로 "" 안에서는 ''을 사용
    	document.write("개행기능이 없습니다.<br>"); // 한 줄 내리는 기능이 없음 -> <br> 사용하기
    	document.write("복수의 데이터를 " , "출력할 수 " , "있습니다");
    	
    	// 출력문 2) console.log() : 데이터를 F12 '브라우저(browser) 콘솔'에 출력하는 함수
    	console.log("(1)테스트 용도로 사용합니다.");
    	console.log("(2)테스트 용도로 사용합니다.");
    	console.log("(3)테스트 용도로 사용합니다.");
    	
    	// 출력문 3) alert() : 데이터를 '브라우저 안내창'으로 출력하는 함수 -> sweetalert2라는 사이트 참고
    	alert("결제 되었습니다.");
    </script>
    </head>
    <body>
    </body>
    </html>
    ```
    
- **자바 스크립트 생성 방법 (2)**
    - 외부에 스크립트 파일(.js)을 만들어 참조하여 자바스크립트를 사용할 수 있다.
    - <script src="경로">형식으로 외부 스크립트 파일을 참조한다.
    - 참조 경로는 css파일 및 이미지 경로와 작성 방법이 같다.
    - 공통 스크립트 및 무거운 파일을 주로 외부로 분류하여 사용한다.

- **변수**
    - 자바스크립트에서의 변수는 데이터의 타입을 따로 명시하지 않고 **var , let**으로 사용한다.
    - 자바스크립트에서의 **상수는 const**를 사용한다.
    - 변수의 역할, 명명규칙 , 활용등은 다른 언어와 같다.
    - **자바스크립트의 데이터 타입**
        
        **1) 숫자 (number)**
        
        **2) 문자열 (string)**
        
        **3) 불리언 (boolean)**
        
        **4) undefined**
        
        **5) 객체(object) -> JSON**
        
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>자바스크립트의 변수</title>
    <script>
    		
    	// 변수명 앞에 var(variable) , let 키워드를 붙여서 변수를 생성한다.
    	// 자바스크립트에서는 정수, 실수 모두 number 타입
    	var v1 = 1;		
    	var v2 = 1.5;	
    	
    	// 자바스크립트에서는 '', "" 모두 string 타입
    	var v3 = '@';   
    	var v4 = "data";
    	
    	// let이 좀 더 요즘 사용하는 것
    	let v5 = true;
    	
    	// 초기화 하지 않은 변수나 존재하지 않는 데이터는 undefined 타입 
    	let v6;
    	
    	// 객체(object) 타입 	// HashMap과 비슷함	
    	let v7 = {
    		"pdCd" : "0x1234",
    		"pdNm" : "스마트 TV",
    		"qty" : 1,
    		"isMobile" : true
    	};
    
    	console.log("---데이터 출력---");
    	console.log("v1 : " , v1);
    	console.log("v2 : " , v2);
    	console.log("v3 : " , v3);
    	console.log("v4 : " , v4);
    	console.log("v5 : " , v5);
    	console.log("v6 : " , v6);
    	console.log("v7 : " , v7);
    	console.log("");
    
    	// typeof : 데이터의 타입을 반환하는 연산자
    	console.log("---데이터 타입 출력---");
    	console.log("v1 : " , typeof v1);
    	console.log("v2 : " , typeof v2);
    	console.log("v3 : " , typeof v3);
    	console.log("v4 : " , typeof v4);
    	console.log("v5 : " , typeof v5);
    	console.log("v6 : " , typeof v6);
    	console.log("v7 : " , typeof v7);
    	console.log("");
    
    	// const로 저장된 데이터는 수정이 불가능하다.
    	const v8 ="데이터";
    	// v8 = "수정데이터"; // error 발생
    	console.log("v8" , v8);
    	
    </script>
    </head>
    <body>
    
    </body>
    </html>
    ```
    
    
  - **데이터 형변환**
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>데이터의 형변환(casting)</title>
    <script>
    
    	// 1) String(숫자) : 숫자 > 문자열 형변환 (2가지 방법)
    	let var1 = 10000;
    	// 방법 1
    	let strVar1 = var1 + "";
    	// 방법 2
    	let strVar2 = String(var1);
    
    	console.log(var1 ,typeof var1);
    	console.log(strVar1 , typeof strVar1);
    	console.log(strVar2 , typeof strVar2);
    	console.log("");
    
    	// 2) Number(문자열) : 문자열 > 숫자 형변환
    	let var2 = "27000";
    	let nVar2 = Number(var2);
    
    	console.log(var2, typeof var2);
    	console.log(nVar2, typeof nVar2);
    	console.log("");
    
    	// 3) parseInt(실수) : 실수 > 정수 (소수점 버림)
    	let var3 = 10 / 3;
    	console.log(var3, typeof var3);
    	
    	var nVar3 = parseInt(var3);
    	console.log(nVar3, typeof nVar3);
    	
    </script>
    </head>
    <body>
    
    </body>
    </html>
    ```

- **연산자**
    - **산술 연산자**
        - **[ 자바의 산술연산자와의 차이점 ]**
            
            자바의 나눗셈(/) 연산자의 결과              >  **정수** 형식
            
            자바스크립트의 나눗셈(/)연산자의 결과 >  **실수** 형식
            
        - / 연산을 제외한 산술 연산자는 자바의 산술 연산자와 같다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 산술 연산자 </title>
        <script>
        
        	let num1 = 15;
        	let num2 = 2;
        	let result = 0;
        	
        	result = num1 + num2;
        	console.log(result); 	// 17
        	
        	result = num1 - num2;
        	console.log(result); 	// 13
        	
        	result = num1 * num2;
        	console.log(result); 	// 30
        	
        	result = num1 / num2;
        	console.log(result); 	// 7.5
        	
        	result = num1 % num2;
        	console.log(result); 	// 1
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
    - **복합 대입 연산자**
        - 자바의 복합 대입 연산자와 같다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 복합 대입 연산자 </title>
        <script>
        
        	let num1 = 10;
        	let num2 = 3;
        	
        	num1 += num2;
        	console.log(num1); 	// 13
        	 
        	num1 -= num2;
        	console.log(num1); 	// 10 (num1이 누적되고 있음)
        	 
        	num1 *= num2;
        	console.log(num1); 	// 30
        	 
        	num1 %= num2;
        	console.log(num1); 	// 0 
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
    - **증감 연산자**
        - 자바의 증감 연산자와 같다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 증감 연산자 </title>
        <script>
        
        	let num1 = 10;
        	let num2 = 20;
        	let result = 0;
        	 
        	num1--;							 // 9
        	console.log(num1);
        
        	num1++; 						// 10
        	console.log(num1);    
        
        	result = num2++;  				// result: 20 , num2: 21  
        	console.log(result); 
        
        	result = ++num2;  				// result: 22 , num2: 22  
        	console.log(result); 
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
    - **비교 연산자**
        - **[ 자바의 비교연산자와의 차이점 ]**
            
            자바의 **문자열** **비교(==) 연산자**의 결과  >  **비교 불가** (.equals()메서드 사용)
            
            자바스크립트의 **문자열 비교(==) 연산자**의 결과  >  **비교 가능** 
            
        - "==" 연산을 제외한 비교 연산자는 자바의 비교 연산자와 같다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 비교 연산자 </title>
        <script>
        	
        	let num1 = 10;
        	let num2 = 20;
        
        	console.log(num1 > num2);	// false
        	console.log(num1 < num2);	// true
        	
        	console.log(num1 <= num2);	// true
        	console.log(num1 >= num2); 	// false
        	
        	console.log(num1 == num2);	// false
        	console.log(num1 != num2);	// true
        	
        	
        	// 자바스크립트에서는 문자열데이터끼리 '==' 연산자로 비교가 가능하다.
        	let strData1 = "qwer1234";
        	let strData2 = "qwer1234";
        	
        	console.log(strData1 == strData2);		// true
        	console.log(strData1 != strData2);		// false
        	
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
    - **논리 연산자**
        - 자바의 논리 연산자와 같다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 논리연산자 </title>
        <script>
        
        	let num1 = 10;
        	let num2 = 20;
        	let num3 = 0;
        
        	console.log(num1 > num2 || num2 < num3);	// false
        	console.log(num1 < num2 || num2 < num3);	// true	
        
        	console.log(num1 < num2 && num2 > num3);	// true
        	console.log(num1 > num2 && num2 > num3);	// false
        
        	console.log(num1 > num2);					// false
        	console.log(!(num1 > num2));				// true
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
    - **삼항 연산자**
        - 자바의 삼항 연산자와 같다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title> 삼항 연산자 </title>
        <script>
        
        	let data1 = 10;
        	let data2 = 3;
        
        	let result = data1 > data2 ? "JVASCRIPT" : "JQUERY";
        	console.log(result); 		//JVASCRIPT
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
    - **문자 결합 연산자**
        - **블록 문자열 백틱( ` ) : 여러 줄의 문자열 생성 가능**
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>문자결합 연산자 +</title>
        <script>
        
        	//1) 문자열 + 문자열 = 문자열
        	let data1 = "문자열 ";
        	let data2 = "결합연산자";
        	document.write(data1 + data2 , "<br><hr>");
        	
        	//2) 문자열 + 숫자 = 문자열
        	let data3 = 10000000;
        	let data4 = "원";
        	document.write(data3 + data4 , "<br><hr>");
        
        	//3) 숫자 + 숫자 = 숫자
        	let data5 = 3;
        	let data6 = 12;
        	document.write(data5 + data6 , "<br><hr>");
        	
        	
        	//예제 1)
        	let data7 = "<form>";
        		data7 += "<p>텍스트 : <input type='text'></p>";
        		data7 += "<p>체크박스 : <input type='checkbox'></p>";
        		data7 += "<p>라디오 : <input type='radio'></p>";
        		data7 += "<p>텍스트 에어리어 : <br><textarea cols='10' rows='10'></textarea></p>";
        		data7 += "</form>";
        	document.write(data7 , "<br><hr>");
        	
        	//예제 2)
        	let data8 = "<table border='1'>";
        		data8 += "<tr>";
        		data8 += "<td>1</td>";
        		data8 += "<td>2</td>";
        		data8 += "<td>3</td>";
        		data8 += "</tr>";
        		data8 += "<tr>";
        		data8 += "<td>4</td>";
        		data8 += "<td>5</td>";
        		data8 += "<td>6</td>";
        		data8 += "</tr>";
        		data8 += "</table>";
        	document.write(data8 , "<br><hr>");
        	
        	// 참고) 블록 문자열 백틱(`)  : 여러줄의 문자열을 생성할 수 있다.
        	let reference1 = `<form>
        		<p>텍스트 : <input type='text'></p>
        		<p>체크박스 : <input type='checkbox'></p>
        		<p>라디오 : <input type='radio'></p>
        		<p>텍스트 에어리어 : <br><textarea cols='10' rows='10'></textarea></p>
        		</form>`
        	document.write(reference1 , "<br><hr>");
        	
        	let reference2 = `
        		<table border='1'>
        			<tr>
        				<td>1</td>
        				<td>2</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>4</td>
        				<td>5</td>
        				<td>6</td>
        			</tr>
        		</table>`
        	document.write(reference2 , "<br><hr>");
        	
        </script>
        </head>
        <body>
        </body>
        </html>
        ```
        
- **입력 함수**
    - **confirm**
        - **[형식]**
            
            **confirm("안내 메세지");**
            
        - **확인버튼**을 클릭하면 **true가 반환**된다.
        - **취소버튼**을 클릭하면 **false가 반환**된다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>confirm</title>
        <script>
        	
        	let result = confirm("정말로 탈퇴하시겠습니까?");
        	
        	document.write(result);
        	console.log(result);
        </script>
        </head>
        <body>
        ```
        
    - **prompt**
        - **[형식]**
            
            **prompt("안내문자열" , "기본값");**
            
        - 기본값은 생략 가능하다.
        - 기본 데이터 타입은 문자열이다.
        - 숫자 타입의 데이터는 추가적으로 숫자(Number) 형태로 형변환을 해주어야 한다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>prompt</title>
        <script>
        
        	let getName = prompt("이름을 입력하세요 : " , "000");
        	
        	document.write(getName , typeof getName);
        	console.log(getName , typeof getName, "<br>");	// web에서 일어나는 건 모두 string
        	
        	let htmlGrade = prompt("html 점수");
        	let cssGrade = prompt("css 점수");
        	let jsGrade = prompt("js 점수");
        	
        	let totalGrade = Number(htmlGrade) + Number(cssGrade) + Number(jsGrade);
        	document.write("총점 : " + totalGrade);
        	
        	// + 를 제외한 - / * 연산에서는 숫자로 취급되는 애매한 문법을 가지고 있음
        	// 그러므로 아예 - / * 상관 없이 문자열 > 숫자 인 것은 Number(문자열)로 만들어 주기 
        	
        </script>
        </head>
        <body>
        
        </body>
        </html>
        ```
        
- **제어문**
    - **if 문**
        - 자바의 if문과 같다.
    - **loop** : 자바의 loop와 같다.
        - **while**
        - **do-while**
        - **for + 중첩 for문**
        - **switch**
        - **보조 제어문 break & continue**
- **함수 ( == 메서드 )**
    - 자바스크립트 함수의 역할 및 용도는 자바의 메서드와 같다.
    - 주로 HTML의 Element와 연결하여 사용한다.
    - **[ 형식 ]**
        
        **function 함수명(파라메타){
                 return 리턴값;
        }**
        
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>자바스크립트 함수</title>
    <script>
    
    	// 함수 정의 (function define)
    	// void testMethod(){}   // java 스타일
    	function testfunction1() {
    		alert("함수1이 호출되었습니다.");
    		return;   // 반환데이터가 없을 경우 return키워드는 생략 가능
    	}
    	
    	function testFunction2(){
    		alert("함수2가 호출되었습니다.")
    	}
    	
    	// 함수 호출 (function call)
    	// 객체.메서드명(); // 자바 스타일
    	testfunction1();   // 함수명();
    	
    </script>
    </head>
    <body>
    
    	<h3>함수 호출 예시</h3>
    
    	<!-- 1) 이벤트(Event)와 연결해서 사용한다. -->
    	<input type="button" value="버튼" onclick="testfunction1(); testFunction2();"/> <!-- 버튼이 클릭될 경우 실행 --> 
    	<br>
    	<input type="text" onkeydown="testfunction1(); testFunction2();"/>  			<!-- 키보드가 눌릴 경우 실행 -->
    
    	<hr>
    	
    	<!-- 2) HTML Element에서 자바스크립트 연결 속성(link)을 사용하여 자바스크립트 함수를 호출한다. -->
    	<a href="javascript:testFunction2();"><img src="../images/pic_1.jpg" width="300" height="300"></a>
    
    </body>
    </html>
    ```
    
    - **변수의 생명주기**
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset = "UTF-8">
    <title>변수의 생명주기</title>
    <script>
    	let data = "전역데이터";	// 전역변수 : 함수 밖에 변수
    	
    	function func1(){
    		let local1 = "지역데이터1";	// 지역변수 : 함수 안의 변수 
    		console.log(data);
    		console.log(local1);	
    		// console.log(local2); // local2 is not defined
    		console.log("");
    	}
    	
    	function func2(){
    		let local2 = "지역데이터2";	// 지역변수 : 함수 안의 변수 
    		console.log(data);
    		// console.log(local1);	// local1 is not defined
    		console.log(local2); 
    		console.log("");
    	}
    	
    	
    	console.log(data);
    	//console.log(local1);	// local1 is not defined
    	//console.log(local2);
    	console.log("");
    	
    	func1();
    	func2();
    	
    	let idx1 = 1;	// 전역변수
    	function func3() {
    		
    		let idx2 = 1; // 지역변수
    		console.log("idx1 : " + idx1); 
    		console.log("idx2 : " + idx2);
    		console.log("");
    		
    		idx1++; // 전역은 계속 숫자가 증가함
    		idx2++; // 지역은 함수가 호출 될 때 증가하는데 위에서 다시 초기화 되므로 계속 1
    	}
    	
    </script>
    </head>
    <body>
    
    	<h3>Test Element</h3>
    	<input type="button" value="테스트" onclick="func3();" >
    
    </body>
    </html>
    ```
    
- **parameter (파라메타)**
    - 자바와 같이 함수의 파라메타를 전달 받을 수 있다.
    - 파라메타의 **데이터 형식은 선언하지 않고 파라메타 명만 선언**하여 사용한다.
        
        [예시]
        
        function test(int price) {}   (x)
        
        function test(var price) {}   (x)
        
        function test(let price) {}   (x)
        
        function test(price) {}   	(o)
        

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함수의 파라메타</title>
<script>
	
	function func1(productNm) {
		alert("상품명 : " +  productNm);
	}
	
	function func2(productNm, price){
		alert("상품명 : " + productNm + " / " +"가격 : " + price);
	}
	
	function func3(productNm, price , qty){
		alert("상품명 : " + productNm + " / " +"가격 : " + price +" / " + "수량 : " + qty);
	}

	
</script>
</head>
<body>

	<h3>test element</h3>
	<input type="button" value="함수1" onclick="func1('스마트워치');"> <!-- 겉에가 ""이면 안에는 ''이어야 함 -->
	<input type="button" value="함수2" onclick="func2('스마트워치' , 400000);">
	<input type="button" value="함수3" onclick="func3('스마트워치', 400000, 3);">
	
</body>
</html>
```

- **return**
    - 자바와 같이 함수의 결과데이터를 return 키워드로 반환하고 함수를 종료할 수 있다.
    - 리턴 타입을 명시하지 않고 return 키워드를 사용하여 값을 반환한 뒤에 함수를 종료한다.

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함수의 리턴</title>
<script>

	function checkValidEmail(email){
		
		let isValid = false;
		
		for(let i = 0; i < email.length; i++){
			if(email[i] == '@'){ // 자바 문자열에서는 어떻게 했더라? email.charAt[i]
				isValid = true;
			}
		}
		return isValid;
	}
	function testFunction(){
		
		let result1 = checkValidEmail("qwer1234@gmail.com");
		let result2 = checkValidEmail("qwer1234");
		
		console.log("result1 : " + result1);
		console.log("result2 : " + result2);
		
	}
	
	testFunction();
</script>
</head>
<body>
</body>
</html>
```

- **돔(Document Object Model)**
    
    - **document.getElementById("아이디명");**
        - HTML문서에 id와 일치한 엘리먼트를 선택한다.
        - 내용 , 스타일 , 속성 모두에 변화를 줄 수 있다.
        - 엘리먼트가 발견되지 않으면 null을 반환한다.
        - 엘리먼트의 **값**에 접근할 경우 **셀렉터.value**로 접근한다.
            
            [예시]
            getter = document.getElementById("totalPrice").value
            
            setter = document.getElementById("totalPrice").value = 90000;
            
        - 엘리먼트의 **속성**에 접근할 경우 **셀렉터.속성명**으로 접근한다.
            
            [예시]
            getter = document.getElementById("mainImage").width;
            setter = document.getElementById("mainImage").width = 700;
            
        - 엘리먼트의 **요소**에 접근 할 경우 **셀렉터.innerHTML**로 접근한다.
            
            [예시]
            getter = document.getElementById("title").innerHTML;
            setter = document.getElementById("title").innerHTML = "주문페이지";
            
        
        ```html
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset="UTF-8">
        <title>getElementById 함수</title>
        <script>
        
        	function confirmBranchNm(){
        		
        		// alert(document.getElementById("branchNm").value);
        		let branchNm = document.getElementById("branchNm").value;
        		
        		if (branchNm == "서울" || branchNm == "경기" || branchNm =="인천"){
        			alert("확인 완료");
        			// .value 사용예시
        			document.getElementById("orderGoodsNm").value = "";
        			
        			// .attribute 사용예시
        			document.getElementById("orderGoodsNm").disabled = false;
        			document.getElementById("orderGoodsQty").disabled = false;
        			
        			// .innerHTML 사용예시
        			document.getElementById("msg").innerHTML = "<span style='color:green;'>확인 되었습니다.</span>";
        		}
        		else {
        			alert("확인 실패");
        			
        			// .value 사용예시
        			document.getElementById("branchNm").value = "잘못된 지점명";
        			document.getElementById("orderGoodsNm").value = "없음";
        			// jQuery 버전 $("#orderGoodsNm").value = "없음";
        			
        			// .attribute 사용예시
        			document.getElementById("orderGoodsNm").disabled = true;
        			document.getElementById("orderGoodsQty").disabled = true;
        			
        			// .innerHTML 사용예시
        			document.getElementById("msg").innerHTML = "<span style='color:red;'>확인에 실패했습니다.</span>";
        		}
        	}
        </script>
        </head>
        <body>
        	
        	<fieldset>
           		<legend>상품주문</legend>
           		<p>
        			지점명 : <input type="text" id="branchNm">
        			<input type="button" value="확인" onclick="confirmBranchNm();"> <span id="msg"> </span>
        		</p>
        		<p>
        			주문제품명 : <input type="text" id="orderGoodsNm">
        			주문개수 : 
        		    <select id="orderGoodsQty">
        		        <option value="100">100개</option>
        		        <option value="500">500개</option>
        		        <option value="1000">1000개</option>
        		   	</select>
        		</p>
            </fieldset>
        
        </body>
        </html>
        ```
        
    - **getElementsByName("name");**
        - HTML문서에 name이 일치한 엘리먼트들을 선택한다.
        - 데이터가 컬렉션 형태로 저장된다.
        - 내용 , 스타일 , 속성 모두에 변화를 줄 수 있다.
        - 엘리먼트의 **값**에 접근할 경우 **셀렉터.value**로 접근한다.
            
            [예시]
            getter = document.getElementsByName("gender")[0].value
            
            setter = document.getElementsByName("gender")[0].value = 90000;
            
        - 엘리먼트의 **속성**에 접근할 경우 **셀렉터.속성명**으로 접근한다.
            
            [예시]
            getter = document.getElementsByName("gender")[0].checked;
            setter = document.getElementsByName("gender")[0].checked = true;
            
        
        ```html
        <!DOCTYPE >
        <html>
        <head>
        <meta charset="UTF-8">
        <title>getElementsByName 함수</title>
        <script>
            
        	function test1(){
        	 	
        	 	// radio & checkbox는 "getElementsByName"
        	 	let radioEx = document.getElementsByName("radioEx");
        	 	console.log(radioEx);
        	 	console.log("");
        	 	
        		//예시 1) radioEx 배열의 크기 가져오기
        		console.log( "radioEx 배열 크기 : "+ radioEx.length);
        		console.log("");
        		
        		//예시 2) radioEx의 값을 가져오기
        		for (let i = 0; i < radioEx.length; i++){
        			console.log("value : " + radioEx[i].value);
        		}
        		console.log("");
        		
        		//예시 3) radioEx의 체크된 값을 가져오기
        	   for (let i = 0; i < radioEx.length; i++){
        		   if (radioEx[i].checked == true){
        			   console.log("(checked value) : " + radioEx[i].value);
        		   }
        	   }
        	   console.log("");
        	   
        		//예시 4) radioEx의 특별한 엘리먼트만 체크하기 (강제로 선택)
        		radioEx[2].checked = true;
        		console.log("");
        		
        		//예시 5) radioEx에 특정 속성 적용하기
        		for (let i = 0; i < radioEx.length; i++){
        			radioEx[i].disabled = true;
        		}
        		      
        	}
        	
        	function test2() {
        		
        		let checkboxEx = document.getElementsByName("checkboxEx");
        		console.log(checkboxEx);
        		console.log("");
        		
        		//예시 1) checkboxEx 배열의 크기 가져오기
        		console.log("checkboxEx 배열 크기" + checkboxEx.length);
        		console.log("");
        		
        		//예시 2) checkboxEx의 요소의 값을 가져오기
        		for (let i = 0; i < checkboxEx.length; i++){
        			console.log(checkboxEx[i].value);
        		}
        		console.log("");
        		
        		//예시 3) check이름을 가진 check중에서 체크된 것만 확인하기
        		for (let i = 0; i < checkboxEx.length; i++){
        			if (checkboxEx[i].checked){ // checkboxEx[i].checked == true 와 같은 의미
        				console.log("(checked)" + checkboxEx[i].value);
        			}
        		}
        		console.log("");
        		
        		//예시 4) checkboxEx의 특별한 엘리먼트만 체크하기
        		for (let i = 0; i < checkboxEx.length; i++){
        			if (checkboxEx[i].checked){ 
        				checkboxEx[i].checked = false;
        			}
        		}
        		checkboxEx[0].checked = true;
        		checkboxEx[2].checked = true;
        		console.log("");
        		
        		//예시 5) checkboxEx에 특정속성 적용하기
        		for (let i = 0; i < checkboxEx.length; i++){
        			checkboxEx[i].disabled = true;
         		}
        	}
        
        	
        </script>
        </head>
        <body>
        
        	<h4>name을 주로 사용하는 타입 radio</h4> 
        	<input type="radio" name="radioEx" value="html"/> html
        	<input type="radio" name="radioEx" value="css"/> css
        	<input type="radio" name="radioEx" value="javascript"/> javascript
        	<input type="button" value="확인" onclick="test1();"><br>
        
        	<hr>
        
        	<h4>name을 주로 사용하는 타입 checkbox</h4> 
        	<input type="checkbox" name="checkboxEx" value="html"/> html
        	<input type="checkbox" name="checkboxEx" value="css"/> css
        	<input type="checkbox" name="checkboxEx" value="javascript"/> javascript
        	<input type="button" value="확인" onclick="test2();"/><br>
        
           
        </body>
        </html>
        ```
        
    - **속성(attribute)**
        - **셀렉터.속성명** 형태로 html 엘리먼트의 속성값에 접근이 가능하다.
        
        ```html
        <!DOCTYPE html>
        <html>
        <meta charset="UTF-8">
        <title>attribute</title>
        <head>
        <script>
        
        	/*
        		 [ 예시 ]
        		 
        		document.getElementById("target")			    > id가 target인 엘리먼트에 접근
        		document.getElementById("target").src		  > id가 target인 엘리먼트의 src 속성에 접근
        		document.getElementById("target").width		> id가 target인 엘리먼트의 width 속성에 접근
        		document.getElementById("target").height	> id가 target인 엘리먼트의 height 속성에 접근
        	*/
        	let imageIdx = 1;
        	function changeImg(direct) {
        		
        		if (direct == "next") {
        			if (imageIdx == 9){
        				return;
        			}
        			imageIdx++;
        		}
        		else if (direct == "before") {
        			if (imageIdx == 1){
        				return;
        			}
        			imageIdx--;
        		}
        		
        		document.getElementById("photo").src = "../../images/pic_" + imageIdx + ".jpg";
        		
        	}
        
        	function changeImgSize(method){
        		let width = document.getElementById("photo").width;
        		let height = document.getElementById("photo").height;
        		
        		if (method == "extend"){
        			height += 30;
        			width += 30;
        		}
        		else if (method == "reduce"){
        			height -= 30;
        			width -= 30;
        		}
        		document.getElementById("photo").width = width;
        		document.getElementById("photo").height = height;
        	}
        	
        	function changeColor(color){
        		
        		document.getElementById("target").style = "background-color:" + color;
        	}
        	
        	let colors = ["pink", "navy", "white", "gray", "purple"];
        	let i = 0;
        	function changeColor2 (){
        		document.getElementById("target").style =  "background-color:" + colors[i];
        		i++;
        		if (i == colors.length){
        			i = 0;
        		}
        	}
        	
        </script>
        </head>
        <body id="target">
        	
        	<div>
        		<img src="../../images/pic_1.jpg" width="200" height="200" id="photo" alt="">
        	</div>
        	
        	<hr>
        	
        	<p>
        		이미지 변경 : 
        		<button onclick="changeImg('before');">이전</button>
        		<button onclick="changeImg('next');">다음</button>
        	</p>
        
        	<hr>
        
        	<p>
        		이미지 크기 변경 :
        		<button onclick="changeImgSize('extend');">확대</button>
        		<button onclick="changeImgSize('reduce')">축소</button>
        	</p>
        	
        	<hr>
        	<p>
        		배경색 변경1 :
        	    <input type="radio" name="color" onclick="changeColor('blue');">파랑색
        	    <input type="radio" name="color" onclick="changeColor('green');" >녹색
        	    <input type="radio" name="color" onclick="changeColor('purple');">자주색
        	    <input type="radio" name="color" onclick="changeColor('yellow');">노란색
        	    <input type="radio" name="color" onclick="changeColor('orange');">주황색
            </p>
            <hr>
            <p>
        	    배경색 변경2 :
        	    <input type="button" value="변경" onclick="changeColor2();" >
            </p>
        
        </body>
        </html>
        
        ```

	- **이벤트 (event)**
	    - HTML 요소에 대하여 발생한 사건 및 동작을 이벤트(event)라고 한다.
	    - 프로그램의 흐름을 이벤트 중심으로 제어하는 방식을 이벤트 드리븐 (event driven)이라고 한다.
	        
	        [ 예시 ]
	        **onchange**            : 엘리먼트의 상태가 변경되었을 때 발생하는 이벤트
	        
	        **onmouseenter**    : 엘리먼트안으로 마우스 포인트가 옮겨왔을 때 발생하는 이벤트
       
	        **onmouseleave**    : 엘리먼트밖으로 아무스 포인트가 옮겨갔을 때 발생하는 이벤트
	        
	        **onkeydown**       : 엘리먼트에서 키보드의 키가 눌렀을 때 발생하는 이벤트
       
	        **onkeyup**         : 엘리먼트에서 키보드의 키가 올라올 때 발생하는 이벤트
	        
	        **onmousedown**     : 엘리먼트에서 마우스 포인트가 눌렀을 때 발생하는 이벤트
       
	        **onmouseup**       : 엘리먼트에서 마우스 포인트가 올라올 때 발생하는 이벤트
	        
	        **onfocus**         : 엘리먼트가 포커스를 획득했을 때 발생하는 이벤트
       
	        **onblur**          : 엘리먼트가 포커스를 잃었을 때 발생하는 이벤트
	        
	        **onclick**         : 엘리먼트를 클릭했을 때 발생하는 이벤트
       
	        **onscroll**        : 스크롤바가 스크롤될 때 발생하는 이벤트
       
	        **onsubmit**        : 폼의 입력값이 서버로 제출될 때 발생하는 이벤트
       
	        **onload**          : 웹페이지가 전부 로딩된 후에 발생하는 이벤트
	        
	    
	    ```html
	    <html>
	    <head>
	    </head>
	    <meta charset="UTF-8">
	    <title>이벤트</title>
	    <script>
	    
	         function kDown(){
	    		 document.getElementById("target").src = "../../images/pic_1.jpg";
	    	 }
	    	 
	    	 function kUp(){
	    		 document.getElementById("target").src = "../../images/pic_2.jpg";
	    	 }
	    	 
	    	 function mDown(){
	    		 document.getElementById("target").src = "../../images/pic_3.jpg";
	    	 }
	    	 
	    	 function mUp(){
	    		 document.getElementById("target").src = "../../images/pic_4.jpg";
	    	 }
	    	 
	    	 function doFocus(){
	    		 document.getElementById("target").src = "../../images/pic_5.jpg";
	    	 }
	    	 
	    	 function doBlur(){
	    		 document.getElementById("target").src = "../../images/pic_6.jpg";
	    	 }
	    	 
	    	 function mEnter(){
	    		 document.getElementById("target").src = "../../images/pic_7.jpg";
	    	 }
	    	 
	    	 function mLeave(){
	    		 document.getElementById("target").src = "../../images/pic_8.jpg";
	    	 }
	    	 let toggle = true;
	    	 function doChange(){
	    		 
	    		 if (toggle){
	    			document.getElementById("target").src = "../../images/pome.png";
	    			toggle = false; 
	    		 }
	    		 else {
	    			 toggle = true;
	    		 }
	    	 }
	    	 
	    </script>
	    <body>
	    
	       	<img src="../../images/poodle.png" id="target" height="300" width="300" alt="이미지">
	        <hr>
	        
	        키보드 다운 & 업 : <input type="text" onkeydown="kDown();" onkeyup="kUp();" >
	        <hr>
	        
	        마우스 다운 & 업 : <input type="button" value="버튼" onmousedown="mDown();" onmouseup="mUp();">
	    	<hr>
	        
	        포커스 획득 & 잃음 : <input type="text" onfocus="doFocus();" onblur="doBlur();">    
	        <hr>
	    
	        마우스 진입 & 아웃 : <img src="../../images/pic_1.jpg" width="50" height="50" onmouseenter="mEnter();" onmouseleave="mLeave();">
	        <hr>
	        
	        변화 : <input type="radio" name="brand1" onchange="doChange();"> apple   
	        	  <input type="radio" name="brand1" onchange="doChange();"> samsung   
	        	  <input type="radio" name="brand1" onchange="doChange();"> lg  &emsp;&emsp;
	        	   
	       		   <input type="checkbox" name="brand2" onchange="doChange();"> apple   
	        	   <input type="checkbox" name="brand2" onchange="doChange();"> samsung   
	        	   <input type="checkbox" name="brand2" onchange="doChange();"> lg  &emsp;&emsp;
	        	   
	        	   <select onchange="doChange();">
	        	   		<option>apple</option>
	        	   		<option>samsung</option>
	        	   		<option>lg</option>
	        	   </select>
	        	   
	    </body>
	    ```
	    
	- **노드 추가 & 삭제**
	    - 여러 함수를 통해 JavaScript에서 DOM 노드를 유연하게 추가하거나 삭제할 수 있다.
	    - 이를 통해 사용자와의 상호작용에 따라 페이지의 내용을 동적으로 변경할 수 있다.
	        
	        **[ 함수 예시 ]**
	        **createElement**    : html element를 생성한다.
	        
	        **createTextNode**   : text노드를 생성한다.
	        
	        **appendChild**      : 현재 노드에 자녀 노드를 추가한다.
	        
	        **removeChild** : 현재 노드에 자녀 노드를 삭제한다.
	        
	        **parentNode** : 현재노드의 부모노드를 반환한다.
	        
	        **childNodes** : 한 노드의 모든 자식에 접근 할 수 있다. 배열이 반환된다.
	        
	        **firstChild** : 배열의 첫번째 자식 노드가 반환된다. childNodes[0]과 같다.
	        
	        **lastChild** : 배열의 마지막 자식 노드가 반환된다. childNodes[childNodes.length -1]과 같다.
	        
	    - **새로운 노드를 추가 하는 방법**
	        - 원하는 노드를 생성한다.
	        - 새로운 노드의 속성값을 부여한다.
	        - 노드가 html에 문서에 추가되기 위해서 연결할 부모노드를 찾아서 연결한다.
	    
	    ```html
	    <!DOCTYPE html>
	    <html>
	    <head>
	    <meta charset="UTF-8">
	    <title>새로운 노드 추가 및 삭제</title>
	    <script>
	    
	    	let imageIdx = 1;
	    	function addElement() {
	    		
	    		// [필수] createElement("태그명") 메서드를 이용하여 새로운 태그를 생성한다.
	    		let addImg = document.createElement("img"); //<img>
	    		
	    		// [옵션] 태그에 속성을 부여한다.
	    		addImg.src = "../../images/pic_" + imageIdx + ".jpg"; // <img src="../../images/pic_1.jpg">
	    		addImg.width = "100"; // <img src="../../images/pic_1.jpg" width="100">
	    		addImg.height = "100"; // <img src="../../images/pic_1.jpg" width="100" height="100">
	    		
	    		// [필수] 부모의 노드를 찾아서 appendChild(노드) 메서드를 이용하여 새로운 노드를 연결한다.
	    		document.getElementById("target1").appendChild(addImg);
	    		
	    		imageIdx++;
	    		
	    		if(imageIdx == 10){
	    			imageIdx = 1;
	    		}
	    	}
	    	
	    	function removeElement() {
	    		
	    		// 삭제하고 싶은 노드의 부모를 선택한다.
	    		let pNode = document.getElementById("target1");
	    		// 마지막 노드 삭제 예시
	    		// firstChild , lastChild, childNodes[n]
	    		pNode.removeChild(pNode.lastChild);
	    		
	    		imageIdx --;
	    		if(imageIdx == 1){
	    			alert("없는 사진")
	    		}
	    	}
	    	
	    	
	    	function addText() {
	    		
	    		// [필수] createTextNode("텍스트") 메서드를 이용하여 새로운 텍스트를 생성한다.
	    		let addText = document.createTextNode("동적으로 텍스트가 추가됩니다."); // 텍스트 생성
	    		let addP = document.createElement("p");	// p 태그 생성 
	    		
	    		// [옵션] 노드에 속성을 부여한다.
	    		addP.style="color : red";
	    		addP.appendChild(addText);
	    		
	    		// [필수] 부모의 노드를 찾아서 appendChild(노드) 메서드를 이용하여 새로운 노드를 연결한다.
	    		document.getElementById("target2").appendChild(addP);
	    		
	    	}
	    	
	    	
	    	function removeText() {
	    		
	    		// 삭제하고 싶은 노드의 부모를 선택한다.
	    		let pNode = document.getElementById("target2");
	    		
	    		// 전체 노드 삭제 예시
	    		for (let i = pNode.childNodes.length - 1; i >= 0; i--){ // 자식 노드 전체 삭제
	    			pNode.removeChild(pNode.childNodes[i]);
	    		}
	    	}
	    	
	    </script>
	    </head>
	    <body>
	    
	    	<h2>첫번째 단락</h2>
	    	<div id="target1"></div>
	    	
	    	<h2>두번째 단락</h2>
	    	<div id="target2"></div>
	    	
	    	<button onclick="addElement();">엘리먼트 추가</button>
	    	<button onclick="removeElement();">엘리먼트 삭제</button>
	    	<button onclick="addText();">텍스트 추가</button>
	    	<button onclick="removeText();">텍스트 삭제</button>
	    	
	    </body>
	    </html>
	    ```

  - **name 셀렉터**
    - **form태그의 name속성**으로 엘리먼트를 선택할때 document.name을 이용한 선택자를 이용하여 엘리먼트를 선택할 수 있다.
    - **[ 형식 ]**
        
        **document.[form tag의 name명].[name명]** 
        
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>name 셀렉터</title>
    <script>
    
    	function printDataInConsole() {
    	    console.log("학번 : " + document.join.studentNum.value);
    	    console.log("이름 : " + document.join.name.value);
    	    // radio & checkbox는 같은 것끼리 name이 같아야함
    	    // radio
    	    console.log("학년 : " + document.join.grade.value);
    	    // select
    	    console.log("선택과목 : " + document.join.subject.value);
    	    // checkbox (여러 개가 체크될 수 있으므로)
    	    let webLanguage = document.join.webLanguage;
    	    for (let i = 0; i < webLanguage.length; i++){
    			if (webLanguage[i].checked){
    				console.log("희망과목 : " + webLanguage[i].value);
    			}
    		}
    	}
    	
    </script>
    </head>
    <body>
     	<form name="join"> <!--반드시 form에 name 써줘야함-->
     		<fieldset>
     			<legend>회원가입</legend>
    	         <p>학번 : <input type="text" name="studentNum"></p>
    	         <p>이름 : <input type="text" name="name"></p>
    	         <p>
    	         	학년 :
    		        <input type="radio" name="grade" value="1" checked>1학년&nbsp;
    		        <input type="radio" name="grade" value="2">2학년&nbsp;
    		        <input type="radio" name="grade" value="3">3학년&nbsp;
    		        <input type="radio" name="grade" value="4">4학년
    	         </p>
    	         <p>
    				선택과목 : 
    		        <select name="subject">
    		             <option value="JAVA">JAVA</option>
    		             <option value="JSP">JSP</option>
    		             <option value="XML">XML</option>
    	        	 </select>
    	         </p>
    	         <p>
    	         	희망 과목 : 
    		         	<input type="checkbox" name="webLanguage" value="html"/> html
    					<input type="checkbox" name="webLanguage" value="css"/> css
    					<input type="checkbox" name="webLanguage" value="javascript"/> javascript
    	         </p>
    	         <p>
    	         	<input type="button" onclick="printDataInConsole();" value="확인">
    	         </p>
        	</fieldset>
        </form>
    </body>
    </html>
    ```
    
  - **onsubmit 이벤트 & 폼 데이터 유효성(validation) 체크**
      - 데이터가 서버로 전송될때 발생하는 이벤트
      - 함수의 **return 값이 false일 경우** 폼데이터를 **서버로 전송하지 않고**
      **return 값이 true일 경우**에만 폼데이터를 **서버로 전송**한다.
    
    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>폼 검증</title>
    <script>
    	function formValidationCheck(){
    		let id = document.f.id;
    		if (id.value == ""){
    			alert("아이디를 입력하세요.");
    			id.focus(); // 선택자.focus; > 선택된 엘리먼트에 onfocus 이벤트 적용
    			return false;
    		}
    		
    		let pwd = document.f.pwd;
    		if(pwd.value.length < 10){
    			alert("비밀번호는 10자 이상으로 작성하세요.");
    			pwd.focus();
    			return false;
    		}
    		// radio 에서 아무것도 체크 안했을 때
    		let gedner = document.f.gender;
    		if (gender.value == ""){  
    			alert("성별을 선택하세요.");
    			gender[0].checked = true;
    			gender[0].focus();
    			return false;
    		}
    		
    		// checkbox에서 아무것도 선택 안했을 때
    		let hobbies = document.f.hobbies;
    		let isChecked = false;
    		for (let i = 0; i < hobbies.length; i++){
    			if (hobbies[i].checked){
    				isChecked = true;
    			}
    		}
    		
    		if (!isChecked){
    			alert("취미는 1개 이상 선택하세요.");
    			hobbies[0].checked = true;
    			hobbies[0].focus();
    			return false;
    		}
    		
    		// select
    		let travel = document.f.travel;
    		if (travel.value == "없음"){
    			alert("여행지를 선택하세요.");
    			travel.focus();
    			
    			return false;
    		}
    		
    		let memo = document.f.memo;
    		if (memo.value.length < 30){
    			alert("최소 30자 이상 작성해주세요.");
    			memo.focus();
    			return false;
    		}
    		return true;
    		
    	}
    </script>
    </head>
    <body>
    
    	<form name="f" onsubmit="return formValidationCheck();">
    		<fieldset>
    			<legend>회원가입 폼</legend>
    			<p>아이디 : <input type="text" name="id"/></p>
    			<p>비밀번호 : <input type="password" name="pwd"/></p>
    			<p>
    				성별 : <input type="radio" name="gender" value="1"/>남자
    			   		   <input type="radio" name="gender" value="2"/>여자
    			</p>
    			<p>
    				취미 : <input type="checkbox" name="hobbies" value="운동"/>운동
    					   <input type="checkbox" name="hobbies" value="잠자기"/>잠자기
    					   <input type="checkbox" name="hobbies" value="공부하기"/>공부하기
    			</p>
    			<p>가고 싶은 여행지는
    				<select name="travel">
    					<option>없음</option>
    					<option>괌</option>
    					<option>다낭</option>
    					<option>나트랑</option>
    					<option>코타키나발루</option>
    					<option>대만</option>
    					<option>푸꾸옥</option>
    				</select>
    			</p>
    			<p>메모<br/>
    				<textarea rows="10" cols="50" name="memo"></textarea>
    			</p>
    			<p>
    				<input type="submit" value="확인" />
    			</p>
    		</fieldset>
    	</form>
    </body>
    </html>
    
    ```

### RDB > MYSQL

- **SQL (Structured Query Language)**
    - SQL(Structured Query Language)은 **관계형 데이터베이스 관리 시스템(RDBMS)의 데이터를 관리하기 위해** 설계된 특수 목적의 프로그래밍 언어이다.
    - 관계형 데이터베이스 관리 시스템에서 자료의 검색과 관리 , 데이터베이스 스키마 생성과 수정 , 데이터베이스 객체 접근 조정 관리를 위해 고안되었다.
    - 많은 수의 데이터베이스 관련 프로그램들이 SQL을 표준으로 채택하고 있다.
    - 데이터베이스 언어 SQL 문법의 종류는 다음과 같이 구별된다.
        
        **1) 데이터 정의 언어** (DDL : Data Definition Language)   		
        
        Ex) CREATE , DROP , ALTER 
        
        **2)** **데이터 조작 언어 (DML : Data Manipulation Language)** 		
        
         **Ex) SELECT , INSERT , UPDATE , DELETE** 
        
        **3) 데이터 제어 언어 (DCL : Data Control Language)**	   		
        
         Ex) GRANT , REVOKE
        
        **4) 트랜잭션 제어 언어 (TCL : Transaction Control Language)**   
        
        EX) COMMIT , ROLLBACK
        
- **데이터 베이스 생성 형식**
    
    **CREATE DATABASE DB_NAME;**
    
- **데이터 베이스 사용 형식**
    
    1) USE DB_NAME;   쿼리문 사용
    
    2) 네비게이터 DB명 더블클릭
    
    ```sql
    /** DATABASE 생성 **/
    CREATE DATABASE HRMS;
    
    /** DATABASE 사용 **/
    USE HRMS;
    ```
    
- **테이블 (table)**
    - 테이블(table)은 데이터베이스에서 행(가로, row, record)과 열(세로, column, field)로 짜여진 표에 기록된 데이터의 집합이다.
    - **테이블 생성 형식**
        - **CREATE TABLE TABLE_NAME (FIELD1 TYPE, FIELD2 TYPE ,.....);**
            
        - 테이블명은 복수형태가 아닌 단수형태로 작성한다.
        - 테이블명은 관용적으로 앞에 T , TB를 붙이기도 한다.
        - `역따옴표(백틱)를 사용하여 테이블이름 또는 컬럼 이름을 나타내기도 한다.
          
    - **데이터 타입**
        - **숫자 : TINYINT , INT , BIGINT , 등**
        - **실수 : DOUBLE**
        - **문자열**
            - **CHAR(고정길이)**
                - 고정길이 문자열 저장
                - 최대 255Byte 저장 가능
                - 고정길이보다 작을경우 공백으로 채워서 저장
            - **VARCHAR(최대길이)**
                - 가변길이 문자열 저장
                - 최대길이보다 작을경우 해당만큼의 데이터만 저장
        - **불리언 : BOOLEAN**
            - MySQL에서 BOOLEAN은 **true  : 1**
            - **false : 0** 으로 인식하여 사용
        - **날짜 : DATE(날짜) , DATETIME(날짜+시간) , TIMESTAMP(날짜+시간) , 등**
    
    ```sql
    /** TABLE 생성 **/
    CREATE TABLE EMPOLYEE (
    	
        EMP_NO CHAR(7),  		 /** fix (배열) ex) 주민등록 번호 **/
        FIRST_NM VARCHAR(30),    /** not fix (array) **/
        LAST_NM VARCHAR(30),
        GENDER CHAR(1),
        HEIGHT DOUBLE,
        WEIGHT DOUBLE,
        HIRE_DT DATE
        
    );
    
    CREATE TABLE TITLE (
    
    	EMP_NO CHAR(7),
        TITLE VARCHAR(30),
        FROM_DT DATE,
        TO_DT DATE
        
    );
    
    CREATE TABLE SALARY (
    
    	EMP_NO CHAR(7),
        SALARY INT,
        FROM_DT DATE,
        TO_DT DATE
    
    );
    
    CREATE TABLE DEPT (
    
    	DEPT_CD INT,
        DEPT_NM VARCHAR(100),
        CREATE_DT CHAR(10)
    
    );
    
    CREATE TABLE EMPLOYEE (
    	
        EMP_NO CHAR(7),  		 /** fix (배열) ex) 주민등록 번호 **/
        FIRST_NM VARCHAR(30),    /** not fix (array) **/
        LAST_NM VARCHAR(30),
        GENDER CHAR(1),
        HEIGHT DOUBLE,
        WEIGHT DOUBLE,
        HIRE_DT DATE
        
    );
    ```
    
   +)  **자주 사용되는 컬럼명 축약어**
    
      - CODE > CD (ORDER_CD , ITEM_CD , PARTNER_CD , DEPT_CD)
      - NAME > NM (ORDER_NM , ITEM_NM , PARTNER_NM , DEPT_NM)
      - DATE > DT (JOIN_DT , REG_DT , START_DT , MODIFY_DT , ENROLL_DT)
      - NUMBER > NO (REPLY_NO , BOARD_NO , NOTICE_NO)
      - COUNT > CNT (LOGIN_USER_CNT , CLIENT_CNT , MANAGER_CNT , EMPLOYEE_CNT)
      - AMOUNT > AMT (STOCK_AMT , RENTAL_FEE_AMT , PO_AMT)
      - QUANTITY > QTY (ORDER_QTY , PRODT_ORDER_QTY , ORDER_QTY_IN_BASE_UNIT ,PROD_QTY_IN_ORDER_UNIT)
      - FLAG > FL (ENROLL_FL , ENROLL_FL , ENROLL_FL)
      - YES OR NO > YN (AGREE_YN)
  
  - **테이블 관련 정보 확인 형식**
      - **DESC TABLE_NAME;**   쿼리문 사용
      - 네비게이터 테이블의 정보 단축 아이콘(i)을 클릭하면 편리하게 조회가능
    
    ```sql
    /** TABLE 확인 **/
    DESC EMPLOYEE;
    DESC SALARY;
    DESC TITLE;
    DESC DEPT;
    ```
    
    - **테이블 수정 형식**
        - 컬럼 추가, 컬럼 삭제, 컬럼명 변경, 테이블명 변경, 데이터 타입 변경, 제약사항(키,초깃값,NULL,등등) 변경 등 테이블 관련 정보들을 수정할 수 있다.
        - 네비게이터 테이블의 수정 단축 아이콘(몽키스패너)을 클릭하면 편리하게 수정할 수 있다.
        - **(마지막 컬럼추가)   ALTER TABLE 테이블명 ADD 컬럼명 타입 (제약사항);**
        - **(첫번째 컬럼추가)   ALTER TABLE 테이블명 ADD 컬럼명 타입 (제약사항) FIRST;**
        - **(N번째 컬럼추가)    ALTER TABLE 테이블명 ADD 컬럼명 타입 (제약사항) AFTER 앞 컬럼명;**
        - **(컬럼속성변경)      ALTER TABLE MODIFY 컬럼명 타입;**
        - **(컬럼이름,속성변경) ALTER TABLE CHANGE 기존컬럼명 새로운컬럼명 타입;**
        - **(테이블이름변경)    ALTER TABLE RENAME 테이블명;**
        - **(컬럼삭제) ALTER TABLE 테이블명 DROP 컬럼명;**
    
    ```sql
    /** TABLE 수정 - 추가, 삭제, 변화, 삭제 **/
    ALTER TABLE DEPT ADD MANAGER_CD VARCHAR(30);
    ALTER TABLE DEPT MODIFY CREATE_DT VARCHAR(20);
    ALTER TABLE DEPT CHANGE CREATE_DT CREATE_DATE DATE;
    ALTER TABLE DEPT DROP CREATE_DATE;
    ALTER TABLE DEPT RENAME DEPARTMENT;
    ```
    
- **데이터 베이스 삭제 형식**
    - **DROP DATABASE DB_NAME;**
    
    ```sql
    /** TABLE 삭제 **/
    DROP TABLE EMPLOYEE;
    DROP TABLE SALARY;
    DROP TABLE TITLE;
    DROP TABLE DEPARTMENT;
    ```
- **SELECT : 조회하기**
    
    ```sql
    CREATE DATABASE SQL_BASIC;
    USE SQL_BASIC;
    
    CREATE TABLE SELECT_EX (	
    	PRODUCT_CD 		VARCHAR(20),
    	PRODUCT_NM 		VARCHAR(100),
    	PRICE			INT,
    	REG_DT			TIMESTAMP
    );
    
    # 실습을 위한 데이터 셋팅 예시
    INSERT INTO SELECT_EX VALUES ('P10001' , '게이밍마우스패드' , 24850 , '2020-02-11'),
    						     ('P10002' , '조립 PC' , 1000000 , '2020-06-30'),
    						     ('P10003' , '브리츠 2채널 스피커' , 30750 , '2020-08-08'),
    						     ('P10004' , '기계식키보드 화이트(청축)', 38150 , '2020-12-30'),
    						     ('P10005' , '기계식키보드 화이트(적축)', 38150 , '2020-12-30'),
    						     ('P10006' , '기계식키보드 화이트(갈축)', 38150 , '2020-12-30'),
    						     ('P10007' , '기계식키보드 화이트(흑축)', 95450 , '2020-12-30'),
    						     ('P10008' , 'USB 8GB', 2870 , '2021-01-07'),
    						     ('P10009' , 'USB 16GB' , 3510 , '2021-06-27'),
    						     ('P10010' , 'USB 32GB' , 5100 , '2021-09-20'),
    						     ('P10011' , 'USB 64GB' , 6200 , '2021-09-20'),
    						     ('P10012' , 'USB 128GB' , 11400 , '2021-09-20'),
    						     ('P10013' , '허브 USB' , 14900 , '2021-12-20'),
    						     ('P10014' , '멀티탭 USB' , 10600 , '2021-12-20'),
    						     ('P10015' , '연장케이블 USB' , 4950 , '2021-12-20');
    ```
    
    - **전체 칼럼 조회**
       - **SELECT  * FROM   테이블 명;**
            
    
    ```sql
    # 예시 1) 전체 컬럼 조회 : SELECT * FROM 테이블 명;
    # 형식 1
    SELECT * FROM SELECT_EX;
    
    # 형식 2
    SELECT 
    		*
    FROM
    		SELECT_EX;
    
    # 형식 3
    SELECT  *
    FROM	SELECT_EX;
    ```
    
    - **특정 칼럼만 조회**
        - **SELECT  특정 칼럼1, 특정 칼럼2..**
            
            **FROM    테이블 명;**
            
        - 칼럼 적는 순서에 따라 출력 되는 순서가 달라짐
    
    ```sql
    # 예시 2) PRODUCT_CD 컬럼만 조회
    SELECT  PRODUCT_CD 
    FROM 	SELECT_EX;
    		
    # 예시 3) PRODUCT_CD , PRODUCT_NM 컬럼만 조회	
    SELECT  PRODUCT_CD , PRODUCT_NM
    FROM 	SELECT_EX;
    		
    # 예시 4) PRODUCT_CD , PRODUCT_NM , PRICE컬럼만 조회	  
    SELECT  PRODUCT_CD , PRODUCT_NM , PRICE
    FROM 	SELECT_EX;
    		
    # 예시 5) PRODUCT_CD , PRODUCT_NM , PRICE , REG_DT 컬럼만 조회	= 전체
    SELECT  * 
    FROM 	SELECT_EX;
    		
    # 예시 6) 컬럼을 적는 순서에 따라 출력되는 순서가 달라진다.
    SELECT  PRICE , REG_DT , PRODUCT_NM , PRODUCT_CD
    FROM	SELECT_EX;
    
    SELECT  REG_DT , PRODUCT_NM , PRICE, PRODUCT_CD
    FROM	SELECT_EX;
    ```
    
    - **테이블에 존재하지 않는 연산 데이터 조회 및 AS 키워드로 별칭 지정 가능**
    
    ```sql
    # 예시 7) 테이블에 존재하지 않는 연산 데이터를 조회 할 수 있다. AS(ALIAS) 키워드로 별칭을 지정할 수 있으며 별칭은 생략할 수 있다.
    SELECT  PRICE , 
    		PRICE * 0.1 		AS TAX ,
            PRICE + PRICE * 0.1 AS TOTAL_PRICE
    FROM 	SELECT_EX;
    ```
    
    - **비교 연산자**
        
        **>   	 : 크다**
        
        **<   	 : 작다**
        
        **>=  	 : 크거나 같다**
        
        **<=  	 : 작거나 같다**
        
        **=   	 : 같다.  		(! 자바의 == 연산자와 다르다.)**
        
        **<> , !=  : 다르다**
        
        - **(중요)문자열 및 날짜 데이터도 대소동등 비교 연산이 가능하다.**
        - 자바의 조건식과 같이 **WHERE 뒤에** 조건식에 해당하는 데이터를 조회할 수 있다.
    
    ```sql
    # 예시 8) '가격이 10000원 이하'의 상품 '전체' 컬럼 조회
    SELECT  *
    FROM 	SELECT_EX
    WHERE 	PRICE <= 10000;
    
    		
    # 예시 9) 가격이 10000원 초과의 상품 전체 컬럼 조회
    SELECT  *
    FROM 	SELECT_EX
    WHERE 	PRICE > 10000;
      
    		
    # 예시 10) 상품코드가 'P10001'인 상품 전체 컬럼 조회
    SELECT  *
    FROM 	SELECT_EX
    WHERE 	PRODUCT_CD = 'P10001';
    
    		
    # 예시 11) 상품코드가 'P10001'이 아닌 상품 전체 컬럼 조회
    
    SELECT  *
    FROM 	SELECT_EX
    WHERE 	PRODUCT_CD != 'P10001';
    
    # 정식 방법
    SELECT  *
    FROM 	SELECT_EX
    WHERE 	PRODUCT_CD <> 'P10001';
    			
    # 예시 12) 상품등록 날짜가 2021년 이후부터의 상품의 전체 컬럼 조회		
    SELECT  *
    FROM 	SELECT_EX
    WHERE 	REG_DT >= '2021-01-01';
    
    ```
    
    - **DISTINCT**
        - 중복을 제거한 값을 컬럼을 조회한다.
    
    ```sql
    # 예시 13) 상품등록 날짜를 중복을 제거하여 조회
    SELECT  DISTINCT REG_DT
    FROM 	SELECT_EX;
    ```
    
    - **논리연산자 ( and , or , not )**
        - 자바와 같다
        - **not > and > or 의 연산 순위**를 가진다
    
    ```sql
    # 예시 14) 상품코드가 'P10001' , 'P10003' , 'P10005'인 상품의 전체컬럼 조회
    SELECT  * 
    FROM 	select_ex 
    WHERE	PRODUCT_CD = 'P10001' 
    OR      PRODUCT_CD = 'P10003' 
    OR 		PRODUCT_CD = 'P10005';
    		
    # 예시 15) 상품가격이 20000 ~ 50000인 상품의 전체컬럼 조회
    SELECT   *
    FROM	 select_ex 
    WHERE 	 PRICE >= 20000
    AND  	 PRICE <= 50000;
    		
    # 예시 16) 상품가격이 20000 ~ 50000이 아닌 상품의 전체컬럼 조회
    SELECT  *
    FROM 	select_ex
    WHERE	NOT ( PRICE >= 20000  AND PRICE <= 50000 );
    		
    # 예시 17) 상품가격이 5000 ~ 50000이면서 2021년도 등록상품의 전체컬럼 조회		
    SELECT  *
    FROM 	select_ex 
    WHERE 	( PRICE >= 5000 AND PRICE <= 50000 )
    AND 	( REG_DT >= '2021-01-01' AND REG_DT <= '2021-12-31'); 
    		
    # 예시 18) 상품 등록날짜가 2020년도 1~3월 , 2021년도 1~3월 등록상품의 전체컬럼 조회
    SELECT  *
    FROM 	select_ex 
    WHERE	(REG_DT >= '2020-01-01' AND REG_DT <= '2020-03-31')
    OR 		(REG_DT >= '2021-01-01' AND REG_DT <= '2021-03-31');
    ```
    
    - **between -> AND 대체제**
        - 2개의 범위 사이의 값을 조회할 때 사용한다. ( 시작값과 종료값 포함 )
        - **[ 형식 ]**
            
            **컬럼 BETWEEN 시작값 AND 종료값**  
            
    - **in  -> OR 대체제**
        - **[ 형식 ]**
            
            **IN (값1,값2,...값N)**
            
    
    ```sql
    # 예시 19) 상품가격이 20000 ~ 50000인 상품의 전체컬럼 조회
    # 예시 15와 비교
    SELECT   *
    FROM	 select_ex 
    WHERE 	 PRICE >= 20000
    AND  	 PRICE <= 50000;
    # BETWEEN A AND B
    SELECT *
    FROM select_ex 
    WHERE PRICE BETWEEN 20000 AND 50000; 
    
    		
    # 예시 20) 상품가격이 20000 ~ 50000이 아닌 상품의 전체컬럼 조회
    # 예시 16과 비교
    SELECT  *
    FROM 	select_ex
    WHERE	NOT ( PRICE >= 20000  AND PRICE <= 50000 );
    # NOT BETWEEN A AND B
    SELECT  *
    FROM 	select_ex
    WHERE	PRICE NOT BETWEEN  20000  AND 50000;
    		
    # 예시 21) 2021년에 등록된 상품의 전체컬럼 조회		
    SELECT  *
    FROM 	select_ex 
    WHERE 	REG_DT BETWEEN '2021-01-01' AND '2021-12-31';
    
    		
    # 예시 22) 2021년에 등록되지 않은 상품의 전체컬럼 조회		
    SELECT  *
    FROM 	select_ex 
    WHERE   REG_DT NOT BETWEEN '2021-01-01' AND '2021-12-31';
    	
    		
    # 예시 23) 상품코드가 'P10001' , 'P10003' , 'P10005'인 상품의 전체컬럼 조회
    # 예시 14와 비교
    SELECT  * 
    FROM 	select_ex 
    WHERE	PRODUCT_CD = 'P10001' 
    OR      PRODUCT_CD = 'P10003' 
    OR 		PRODUCT_CD = 'P10005';
    # IN (값1,값2,,,);
    SELECT  *
    FROM 	select_ex 
    WHERE 	PRODUCT_CD IN ('P10001', 'P10003', 'P10005');
    	
    		
    # 예시 24) 상품코드가 'P10001' , 'P10003' , 'P10005'이 아닌 상품의 전체컬럼 조회
    # NOT IN (값1,값2,,,);
    SELECT  *
    FROM 	select_ex 
    WHERE 	PRODUCT_CD NOT IN ('P10001', 'P10003', 'P10005');
    ```
    
    - **like**
        - 패턴 매칭기법으로 패턴에 매칭된 데이터만 조회한다.
        - 데이터 매칭 와일드카드로 %를 사용한다.
        - 데이터 자리수 매칭 와일드 카드로 _를 사용한다.
        - **%단어 : ~ 단어 , %단어% : ~ 단어 ~ , 단어% : 단어 ~**
    
    ```sql
    # 예시 25) 상품명에 'USB'단어가 들어있는 상품의 전체 컬럼 검색
    SELECT *
    FROM select_ex 
    WHERE PRODUCT_NM LIKE '%USB%';
    
    		
    # 예시 26) 상품명이 'USB'로 시작하는 상품의 전체 컬럼 검색
    SELECT *
    FROM select_ex 
    WHERE PRODUCT_NM LIKE 'USB%';
    
    		
    # 예시 27) 상품명이 'GB'로 끝나는 상품의 전체 컬럼 검색
    SELECT *
    FROM select_ex 
    WHERE PRODUCT_NM LIKE '%GB';
    ```
    
    - **테이블 조회 정렬 ORDER BY**
        - **오름차순(작 -> 큰) 정렬 ASC**와 **내림차순(큰 -> 작) 정렬 DESC** 2가지가 있다.
        - 조건식이 있을 경우 WHERE절 밑에 작성한다.
        - DESC를 명시하지 않으면 기본 값으로 ASC로 작동한다.
        - 여러가지의 컬럼을 정렬 할 수 있다.
        - 기본적으로 정렬방식에 컬럼명을 작성하나 인덱스로 작성할 수도 있다.
    
    ```sql
    # 예시 28) 상품의 전체 컬럼 검색 (가격이 낮은 순서대로 정렬)
    # 집어 넣은 순서대로 나옴
    SELECT   *
    FROM 	 select_ex
    ORDER BY PRICE ASC;
    # ORDER BY PRICE; 와 같음
    
    		
    # 예시 29) 상품의 전체 컬럼 검색 (가격이 높은 순서대로 정렬)
    SELECT   *
    FROM 	 select_ex
    ORDER BY PRICE DESC; 
    
    # 예시 30) 상품의 전체 컬럼 검색 (최근에 등록된 상품순서 = DESC  , 가격이 낮은순서대로 정렬)
    SELECT   *
    FROM 	 select_ex 
    ORDER BY REG_DT DESC , PRICE ASC;
    
    		
    # 예시 31) 2021년도에 등록된 상품의 전체 컬럼 검색 (가격이 높은 순서대로 정렬)
    SELECT   *
    FROM 	 select_ex
    WHERE 	 REG_DT BETWEEN '2021-01-01' AND '2021-12-31'
    ORDER BY PRICE DESC;
    
    ```
    
    - **LIMIT : 특정 개수만큼 레코드 조회하기**
        - **[ 형식 ]**
            
            **LIMIT x** 	: x row(개수)만 조회
            
            **LIMIT x,y**   : x번째 부터 y row(개수)만 조회
            
    
    ```sql
    # 예시 32) 가격이 가장 높은 3개의 상품의 전체 컬럼 조회
    SELECT *
    FROM select_ex 
    ORDER BY PRICE DESC
    LIMIT 3;
    		
    # 예시 33) 가장 최신에 등록된 3개의 상품의 전체 컬럼 조회
    SELECT *
    FROM SELECT_EX
    ORDER BY REG_DT DESC 
    LIMIT 3;
    
    # 예시 34) 최신에 등록된 3개의 상품의 전체 컬럼 조회 (5번째 레코드 이후부터 조회)
    SELECT *
    FROM SELECT_EX 
    ORDER BY REG_DT DESC
    LIMIT 5,3;
    ```
    **+) 트래잭션 제어 언어 (Transaction Control Language)** 
	
	- **COMMIT** : 트렌젝션을 데이터베이스에 반영한다.
	    - 반드시 커밋 명령어를 실행 해야 트렌젝션(변경)이 database에 적용 된다.
	    - commit명령어를 사용하지 않으면 , 현재 연결상태에서만 변경사항이 보이는 것이고 재접속을 할 경우 변경했던 내용이 반영이 되어있지 않다.
	    - 기본적으로 autocommit설정이 되어있는데 중요한 서버(운영)에는 autocommit 설정을 걸지 않는다.
	- **SAVEPOINT** :  현재 시점을 저장한다.
	    - 저장점을 정의하면 롤백할 때 현 시점에서 SAVEPOINT 까지 트랜잭션을 롤백할 수 있다.
	- **ROLLBACK**  : 변경사항을 취소한다.
	    - ROLLBACK 은 데이터 변경 사항이 취소되어 데이터의 SAVEPOINT 이전 상태로 복구된다.
	
- **INSERT  : 추가하기**
    - 테이블에 새로운 레코드를 추가한다.
    - 모든 컬럼의 데이터가 입력되면 필드명 입력을 생략할 수 있다.
    - **[ 레코드(데이터) 추가 형식 ]**
	
	**INSERT INTO TABLE_NAME(컬럼명1 , 컬럼명2 , ....) VALUES('VAL1','VAL2',....);**
	
    
    ```sql
    USE SQL_BASIC;
    CREATE TABLE INSERT_EX (	
	PRODUCT_CD 		VARCHAR(20),
	PRODUCT_NM 		VARCHAR(100),
	PRICE			INT,
	REG_DT			TIMESTAMP
    );
    
    # 예시 1) 전체 컬럼 추가 예시  # 순서 매우 중요!!
    INSERT INTO INSERT_EX VALUES ('P100000' , 'USB' , 23500 , NOW()); # NOW = NEW DATE
    
    # 예시 2) 전체 컬럼 추가 예시
    INSERT INTO INSERT_EX 
    VALUES 		('P100001' , '모니터받침대' , 8000 , NOW() );
    
    # 예시 3) 전체 컬럼 추가 예시
    INSERT INTO 
		INSERT_EX 
    VALUES 		('P100002' , '게이밍마우스패드' , 25000 , NOW() );
    
    # 예시 4) 특정 컬럼 추가 예시
    INSERT INTO 
		INSERT_EX (PRODUCT_CD)
    VALUES	('P10003');
		
    # 예시 5) 특정 컬럼 추가 예시
    INSERT INTO 
		INSERT_EX (PRODUCT_CD , PRODUCT_NM)
    VALUES	('P10004', '스피커');
		
    # 예시 6) 특정 컬럼 추가 예시
    INSERT INTO 
		INSERT_EX (PRODUCT_CD , PRODUCT_NM , PRICE)
    VALUES	('P10005', '키보드' , 38000);		
		
    # 예시 7) 특정 컬럼 추가 예시		
    INSERT INTO 
		INSERT_EX (PRODUCT_CD , PRODUCT_NM , PRICE, REG_DT)
    VALUES	('P10005', '먼지제거제' , 3000  , NOW());
    
    # 모든 컬럼에 값을 넣을 때는 INSERT INTO INSERT_EX VALUES ( , , , );으로 주로 사용
    
    COMMIT; # COMMIT까지 반드시 해야 DB에 올라감 # AUTOCOMMIT 설정이 있기는 하나 하는 습관 가지기
    SELECT * FROM INSERT_EX ;
    
    ```
    
- **UPDATE : 수정하기**
    - 테이블의 레코드를 수정한다.
    - 대부분 **where절과 같이 사용**한다.
    - **[ 레코드 수정 형식 ]**
	
	**UPDATE**
	
	**테이블명**
	
	**SET**
	
	**컬럼명1 = 값1 ,
	컬럼명2 = 값2**
	
	**WHERE**
	
	**조건식**
	
    
    ```sql
    USE SQL_BASIC;
    CREATE TABLE UPDATE_EX (	
	PRODUCT_CD 		VARCHAR(20),
	PRODUCT_NM 		VARCHAR(100),
	PRICE			INT,
	REG_DT			TIMESTAMP
    );
    
    INSERT INTO UPDATE_EX VALUES ('P10001' , '게이밍마우스패드' , 24850 , '2020-02-11'),
								 ('P10002' , '조립 PC' , 1000000 , '2020-06-30'),
								 ('P10003' , '브리츠 2채널 스피커' , 30750 , '2020-08-08'),
								       ('P10004' , '기계식키보드 화이트(청축)', 38150 , '2020-12-30'),
								 ('P10005' , '기계식키보드 화이트(적축)', 38150 , '2020-12-30'),
								 ('P10006' , '기계식키보드 화이트(갈축)', 38150 , '2020-12-30'),
								 ('P10007' , '기계식키보드 화이트(흑축)', 95450 , '2020-12-30');
    
						     
    # 예시 1) 'P10001'상품의 이름을 '일반 마우스패드'로 변경하기.
    UPDATE 
	 UPDATE_EX 
    SET    
	 PRODUCT_NM = '일반 마우스패드'
    WHERE  
	 PRODUCT_CD = 'P10001';
	
    # 예시 2) 'P10002'상품의 가격을 1200000로 등록날짜를 '2020-07-01'로 변경하기
    UPDATE 	
	UPDATE_EX
    SET 
	PRICE = 1200000,
	REG_DT = '2020-07-01'
    WHERE
	PRODUCT_CD = 'P10002';
       
    # 예시 3) 'P10003'상품의 가격을 기존가격에서 1000원 증가하기
    UPDATE 
	UPDATE_EX
    SET 	
	PRICE = PRICE + 1000
    WHERE
	PRODUCT_CD = 'P10003';
    
    # 예시 4) '키보드' 상품의 가격을 기존가격에서 10% 할인하기 -> LIKE 사용!
    UPDATE 	
	UPDATE_EX
    SET 	
	PRICE = PRICE - PRICE * 0.1
    WHERE 
	PRODUCT_NM  LIKE '%키보드%';
    
    COMMIT;
    SELECT * FROM UPDATE_EX;
    ```
    
- **DELETE   : 삭제**
    - 테이블의 레코드를 삭제한다.
    - 대부분 **where절과 같이 사용**한다.
    - **[ 레코드 삭제 형식 ]**
	
	**DELETE FROM TABLE WHERE FIELD_CONDITION='DATA';**
	
    
    ```sql
    USE SQL_BASIC;
    
    CREATE TABLE DELETE_EX (	
	PRODUCT_CD 		VARCHAR(20),
	PRODUCT_NM 		VARCHAR(100),
	PRICE			INT,
	REG_DT			TIMESTAMP
    );
    
    INSERT INTO DELETE_EX VALUES ('P10001' , '게이밍마우스패드' , 24850 , '2020-02-11'),
								 ('P10002' , '조립 PC' , 1000000 , '2020-06-30'),
								 ('P10003' , '브리츠 2채널 스피커' , 30750 , '2020-08-08'),
								       ('P10004' , '기계식키보드 화이트(청축)', 38150 , '2020-12-30'),
								 ('P10005' , '기계식키보드 화이트(적축)', 38150 , '2020-12-30'),
								 ('P10006' , '기계식키보드 화이트(갈축)', 38150 , '2020-12-30'),
								 ('P10007' , '기계식키보드 화이트(흑축)', 95450 , '2020-12-30');
						     
    # 예시 1) 상품코드가 'P10001'인 레코드 삭제
    DELETE FROM DELETE_EX WHERE PRODUCT_CD = 'P10001';
    
    # 예시 2) 상품코드가 'P10002'인 레코드 삭제
    DELETE FROM DELETE_EX WHERE PRODUCT_CD = 'P10002';
    
    # 예시 3) 상품명에 '키보드'가 있는 레코드 삭제
    DELETE FROM DELETE_EX WHERE PRODUCT_NM LIKE '%키보드%';
		
    # 예시 4) 전체 데이터 삭제 예시
    DELETE FROM DELETE_EX ;
    
    COMMIT;
    SELECT * FROM DELETE_EX;
    ```
