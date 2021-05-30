<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String memberid = (String) session.getAttribute("memberid");
	boolean login = memberid != null;
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Session Login Check</title>
</head>
<body>
	<div class="container">

		<%
		if(login) {
	%>
		아이디 "<%= memberid %>"로 로그인 한 상태
		<%
		} else {
	%>
		로그인하지 않은 상태
		<%
		}
	%>

	</div>
</body>
</html>