<%@page import="ch11.Thermometer"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("t", thermometer);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>온도 변환 예제</title>
</head>
<body>
<div class="container">
	${t.setCelsious("서울", 27.3) }
	
	서울 온도 : 섭씨 ${t.getCelsious("서울") }도 / 화씨 ${t.getFahrenheit("서울") }
	
	<br/>
	정보 : ${t.info }
</div>
</body>
</html>