<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- Tag 경로 설멍 및 prefix 설정 --%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<my:navbar />

<div class="container">
	<!-- Custom Tag >> WEB-INF/tags 폴더 또는 하위 폴더에 존재 -->
	<!-- 어느 폴더에 있는지 명시해주어야 한다. -->
	<my:tag1 />
	
	<hr>
	
	<my:tag1 />
</div>
</body>
</html>