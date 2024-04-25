<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax workflow</title>
<script src="04_jQuery/js/jquery-3.7.1.min.js"></script>
<script>

	$().ready(function(){
		
		$("#startBtn").click(function(){
			// let sendData = {
			//	 "testData" : $("#testData").val();
			// }
			
			// 2) 데이터를 서버로 전송 (3번 절차는 servlet에서 진행)
			$.ajax({
				url    : "ajaxEx04" ,
				type   : "post" ,
				data   : {"testData" : $("#testData").val();}
				sucess : function(data){
					// 4) 화면 업데이트
					$("#resultMsg").text(data);
				}
			});
		});
		
	});
</script>
</head>
<body>

	<p id="resultMsg"></p>
	<!--  1) AJAX Workflow 시작 -->
	<p>
		<input type="text" id="testData" />
		<input type="button" id="startBtn" value="AJAX work flow" /> 
	</p>
	
</body>
</html>