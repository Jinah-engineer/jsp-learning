<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	List<String> list = new ArrayList<>();
	list.add("java");
	list.add("html");
	list.add("mariadb");
	list.add("css");
	
	pageContext.setAttribute("list1", list);
	pageContext.setAttribute("i", 3);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		0번째 값 : ${list1[0] } <br>
		1번째 값 : ${list1[1] } <br>
		<%-- []안에 string 값으로 들어갈 수도 있지만, tomcat이 잘 해석/변환해서 숫자로 출력한다. --%>
		2번째 값 : ${list1["2"] } <br>
		<%-- 값이 없으면 출력 안함 --%>
		3번째 값 : ${list1[i] }
	</div>
</body>
</html>