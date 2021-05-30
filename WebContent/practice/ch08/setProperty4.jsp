<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		
		<form action="setProperty5.jsp" method="post">
			제목 : <input type="text" name="title" /> <br>
			저자 : <input type="text" name="writer"/> <br>
			가격 : <input type="number" name="price" /> <br>
			<input type="submit" value="등록" />
		</form>
		
	</div>
</body>
</html>