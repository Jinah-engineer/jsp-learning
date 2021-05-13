<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>옵션 선택 화면</title>
</head>
<body>
	<div class="container">

		<form action="view.jsp">
			<div class="form-group">
				보고 싶은 페이지 선택 : <label for="select1"></label> 
				<select class="form-control" id="select1" name="code">
					<option value="A">A 페이지</option>
					<option value="B">B 페이지</option>
					<option value="C">C 페이지</option>
				</select>
			</div>
			<input class="btn btn-primary" type="submit" value="이동">
		</form>
	</div>
</body>
</html>