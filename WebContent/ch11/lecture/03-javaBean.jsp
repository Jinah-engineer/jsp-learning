<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book1" class="ch08.Book">
	<jsp:setProperty name="book1" property="title" value="JAVA" />
	<jsp:setProperty name="book1" property="writer" value="Kim" />
</jsp:useBean>

<%
	pageContext.setAttribute("title", "writer");
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
		book : ${book1 } <br>
		title : ${book1.title } <br>
		write : ${book1.writer }
		
		<%-- 주의할 점 --> property (get 메소드를 활용한)가 있어야 한다. --%>
		
		<%-- none : ${book1.none }  --%>
		
		<hr>
		title : ${book1["title"] }<br>
		writer : ${book1["writer"] }<br>
		
		
		<hr>
		title : ${book1[title] }
		title : ${book1["writer"] }
	</div>
</body>
</html>