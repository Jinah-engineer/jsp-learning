<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<!-- Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/style.css">

<meta charset="UTF-8">
<title>Login JSP File</title>
</head>
<body>
	<div class="container">
		<s2:navbar />

		<h1 id="justFont" style="font-size: 50px">로그인</h1>
		
		<form method="post" action="${pageContext.request.contextPath }/sample2/member/login">
		<div class="form-group">
			<label for="input1">ID</label>
			<input class="form-control" type="text" name="id" id="input1">
		</div>
		
		<div class="form-group">
			<label for="input2">Password</label>
			<input class="form-control" type="password" name="password" id="input2">
		</div>
		
			<br> <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> Login</button>
			
		</form>

		<s2:message />


	</div>
</body>
</html>