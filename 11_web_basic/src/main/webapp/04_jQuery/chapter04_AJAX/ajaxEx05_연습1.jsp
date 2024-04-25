<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 24.04.25 time 13:35-13:41
	today 소감문
	정답예시에서는 result를 Y, N으로 받아서 success에서 if문으로
	중복인지 사용 가능한 아이디 인지 구분했는데
	나는 서블렛에서 result를 중복인지 사용 가능하지를 나누고 보내서
	데이터 출력하도록 만들었다.
 -->
<html>
<head>
<meta charset="UTF-8">
<title>연습예시</title>
<script src="04_jQuery/js/jquery-3.7.1.min.js"></script>
<script>
	$().ready(function(){	
		$("#duplicatedIdCheck").click(function(){
			$.ajax({
				url     : "ajaxEx05_연습1",
				type    : "post" ,
				data    : {"id" : $("#id").val();},
				success : function(data){
					$("#result").html(data);
				}
			});	
		});
		
	});
</script>
</head>
<body>

	<!-- 
	
		1. 중복확인 버튼을 클릭하면 id를 ajaxEx05_연습 Servlet으로 전송한다.
		
		2. 전송된 아이디가 String[] userList = {"user1" , "user2" , "user3" , "user4" , "user5"}; 포함되어있으면 
		   - id가 result인 엘리먼트에 "중복된 아이디 입니다."를 출력한다.
		   
		3. 전송된 아이디가 포함되어있지 않으면
		   - id가 result인 엘리먼트에 "사용가능한 아이디 입니다."를 출력한다.
	
	 -->

	<p>
		id : <input type="text" id="id">
			 <input type="button" id="duplicatedIdCheck" value="중복확인"> 
			 <span id="result"></span>
	</p> 
	
</body>
</html>