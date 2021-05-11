<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Action Attribute</h3>
	
	<!-- action값으로 이동할 페이지의 경로를 적어준다. -->
	<!-- 따라서 제출 버튼을 누르면 해당 페이지로 url 주소가 변경된다. -->
	<!--  14-form-action2.jsp?name=hello&age=25  -->
	<form action="14-form-action2.jsp">
		이름 : <input name="name" type="text"> <br>
		나이 : <input name="age" type="number"> <br>
		<input type="submit">
	</form>
	
	
</body>
</html>