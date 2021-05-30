<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
	<div class="container">
		<%
			String id = (String) session.getAttribute("id");
			String pw = (String) session.getAttribute("pw");
		%>
		<form action="<%=request.getContextPath() %>/practice/ch10/sessionLogin.jsp" method="post">
			아이디 : <input type="text" name="id" size="10">
			암호 : <input type="text" name="pw" size="10">
			<input type="submit" value="Login">		
		</form>
		
	</div>
</body>
</html>