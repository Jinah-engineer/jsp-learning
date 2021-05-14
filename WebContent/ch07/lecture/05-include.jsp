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
		<h1>구구단 3단 출력 (include-directive)</h1>
		<%
			int dan = 3;
		%>
		<!-- dan 변수 사용 가능 -->
		<%@ include file="05-include-directive.jsp" %>
	</div>
	
	<div class="container mt-3">
		<h1>구구단 3단 출력 (include tag)</h1>
		
		<!-- dan 변수 사용 불가 -->
		<!-- include tag를 사용할 때 >>> include method 호출, 따라서 외부에서 선언된 dan 변수를 사용할 수 없다. -->
		<!-- include method는 parameter로 request, response, out 사용 -->
		<!-- request에 붙여서 넣어주면, 이 메소드는 객체를 사용할 때 변수를 사용할 수 있다. -->
		<!-- request parameter에 변수 name과 value를 사용할 수 있게 된다. -->
		<jsp:include page="05-include-tag.jsp">
			<jsp:param name="dan" value="3" />
		</jsp:include>
	</div>
	
	<div class="container mt-3">
		<h1>구구단 4단 출력</h1>
		
		<jsp:include page="05-include-tag.jsp">
			<jsp:param value="4" name="dan" />
		</jsp:include>
	</div>
</body>
</html>