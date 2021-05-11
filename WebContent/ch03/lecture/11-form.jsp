<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form</h1>

	<form>
		<input name ="q" type ="text">
		<!-- if java를 입력한다면 q = java가 된다. -->
		<!-- 11-form.jsp?q=java (주소창에 뜨는 내용 - query string) -->
		<br> <input name ="age" type="text"> 
		<br> <input type="submit" value="send">

	</form>

	<hr>

	<p><%=request.getParameter("q")%>
		<!--  따라서 입력되는 parameter값에 따라서 q의 값을 얻게 된다 -->
	</p>
	<p><%= request.getParameter("age") %>
</body>
</html>