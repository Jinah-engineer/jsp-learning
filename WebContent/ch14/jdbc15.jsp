<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Practice</title>
</head>
<body>
	<div class="container">

		<form action="${pageContext.request.contextPath }/JDBC15InsertServlet"
			method="post">
			Last Name : <input type="text" name="lastName"> <br>
			First Name : <input type="text" name="firstName"> <br>
			Photo : <input type="text" name="photo"> <br>
			
			<input type="submit">
		</form>

	</div>
</body>
</html>