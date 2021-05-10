<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Request 객체</h1>
<%
	System.out.println(request);
	
	out.print(request.getHeader("Host")); // header에 있는 host값 출력
%>
<br>
<%= 
	request.getHeader("Connection") // header에 있는 Connection값 출력
%>

<!-- Request header 첫 줄 -->
<!-- 요청 방식 + 요청 주소 + 요청 규약 -->
<br>
<p> 요청 방식 </p>
<%= request.getMethod() %>

<p> 요청 url </p>
<%= request.getRequestURI() %>

</body>
</html>