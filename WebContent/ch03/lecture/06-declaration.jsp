<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
// 이렇게 method 선언도 가능합니다.
private int add(int a, int b) {
	return a + b;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 따라서 Expression은 위의 메소드를 호출하여 결과를 리턴하게 됩니다. -->
<%= add(9, 8) %>
</body>
</html>