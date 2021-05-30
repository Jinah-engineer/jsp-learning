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
<title>회원가입 입력 폼</title>
</head>
<body>
	<div class="container">
		
		<form action="processJoining.jsp" method="post">
			<table class="table table-striped" border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td>아이디</td>
					<td colspan="3"><input type="text" name="id" size="10"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" size="10"></td>
					<td>이메일</td>
					<td><input type="text" name="email" size="10"></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
					<input type="submit" value="회원가입">
					</td>
				</tr>
			</table>
		</form>
		
	</div>
</body>
</html>