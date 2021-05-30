<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	// long 타입의 시간 값을 저장하기 위해 사용하는 Date 객체 생성
	Date time = new Date();
	
	// Date 객체의 시간 값을 지정한 양식으로 출력하기
	SimpleDateFormat formatter = 
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Session Information</title>
</head>
<body>
	<div class="container">
		
		<%-- 세션ID 출력하기 --%>
		세션 ID : <%= session.getId() %> <br>
		
		<%
			// 세션 생성 시간을 Date 객체 time에 저장
			time.setTime(session.getCreationTime());
		%>
		
		<%-- 세션 생성 시간 --%>
		세션 생성 시간 : <%= formatter.format(time) %> <br>
		
		<%
			time.setTime(session.getLastAccessedTime());
		%>
		
		<%-- 가장 마지막에 세션에 접근한 시간 --%>
		최근 접근 시간 : <%= formatter.format(time) %>
		
	</div>
</body>
</html>