<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> request parameter </p>
<%= request.getParameter("name") %>
<!-- URL뒤에 ?name = john (? + 파라미터명 = 파라미터값을 리턴) -->
<%= request.getParameter("age") %>
<!-- URL뒤에 ?name = donald&age=90 (이렇게 parameter를 추가적으로 줄 수 있다. -->
</body>
</html>