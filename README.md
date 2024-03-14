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
