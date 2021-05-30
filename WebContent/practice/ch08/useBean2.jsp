<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch08.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<%-- JavaBean 객체 생성 (setAttribute) --%>
<%-- 
	지정한 영역에 이미 id 속성에서 지정한 이름의 속성값이 존재하면,
	객체를 새로 생성하지 않고,
	*** 기존에 존재하는 객체를 그대로 사용한다 ***
 --%>
<jsp:useBean id="book1" class="ch08.Book" scope="request" />

<%-- setProperty --%>
<%-- book.setTitle() , book.setWriter() 부분과 같다 --%>
<%--
	생성한 자바빈 객체의 property 값을 변경한다.
 --%>
 <!-- ?? param 값은 어떻게 연결되는지??  -->
<jsp:setProperty name="book1" property="title" param="책"/>
<jsp:setProperty name="book1" property="writer" value="저자" />

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		
		<%
			Book book = (Book) request.getAttribute("book1");
		%>
		
		book : <%= book != null %>
		
		<br>
		
		제목 : <%= book.getTitle() %>
		<br>
		저자 : <%= book.getWriter() %>
		
		<hr>
		
		<h3>getProperty Tag</h3>
		
		제목 : <jsp:getProperty property="title" name="book1" /> <br>
		저자 : <jsp:getProperty property="writer" name="book1" /> <br>
	
	</div>
</body>
</html>