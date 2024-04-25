<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 24.04.25 time 14:08-14:12 
	today 소감문
 -->
<html>
<head>
<meta charset="UTF-8">
<title>연습예시</title>
<script src="04_jQuery/js/jquery-3.7.1.min.js"></script>
<script>
	$().ready(function(){
	
		$("#orderQty").change(function(){
			let sendData = {
				"productId" : $("#productId").val() ,
				"orderQty"  : $("#orderQty").val()
			}
			
			$.ajax({
				url     : "ajaxEx07_연습1" ,
				type    : "post" ,
				data    : sendData ,
				success : function(data) {

				}
			});
		});
	});
</script>
</head>
<body>

	<!-- 
	
		1. 주문수량이 달라질 때 productId와 orderQty를 ajaxEx07_연습 Servlet으로 전송한다.
		
		2. UPDATE SQL을 콘솔에 출력한다.
		   UPDATE PRODUCT
		   SET	  ORDER_QTY = 'orderQty'
		   WHERE  PRODUCT_ID = 'productId'
		
		3. id가 msg인 엘리먼트에 "?개 저장되었습니다." 를 출력한다.
	
	 -->

	<h3>카트리스트</h3>
	<table border="1">
		<tr>
			<td>
				product1
				<input type="hidden" id="productId" value="product1">
			</td>
			<td>주문 수량
				<select id="orderQty">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</td>
		</tr>
	</table>
	<p>
		<span id="msg" style="color:green"></span>
	</p>

</body>
</html>