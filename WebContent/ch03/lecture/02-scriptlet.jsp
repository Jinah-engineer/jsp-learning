<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String str = "hello";
out.write("<h1> scriptlet으로 작성한 코드입니다. </h1>");
%>

<h1>scriptlet</h1>
<p>java code를 작성할 수 있는 요소</p>

<%--
java code를 작성할 수 있는 jsp 요소 
	1. scriptlet
	2. expression
	3. declaration
 --%>

<% 
// scriptlet	
// java code를 작성하면 된다.
System.out.println("console 출력을 해봅니다.");
%>
</body>
</html>