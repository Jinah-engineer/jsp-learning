<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Expression -->

<p> scriptlet </p>
<p> 메소드 안에 작성되는 명령문입니다. </p>
<%
String s = "java";
%>

<p> expression </p>
<p> 메소드 호출 코드의 parameter 부분입니다. </p>
<%= 99 %>
<!-- 따라서 statement를 작성할 수는 없습니다. -->


</body>
</html>