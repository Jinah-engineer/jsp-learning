<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
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
		<form action="11-el-sample2.jsp" method="post">
			이름 : <input type="text" name="myname"/> <br>
			나이 : <input type="number" name="myage" /><br>
			이메일 : <input type="email" name="myemail" /> <br>
			<input type="submit" value="전송" /> <br>
		</form>
	</div>
</body>
</html>