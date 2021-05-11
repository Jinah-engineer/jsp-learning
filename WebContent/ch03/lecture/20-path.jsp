<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Context Root</h1>

<!-- Tomcat은 경로 정보를 request객체에 넣어둔다 -->
<!-- Context Root가 변경될 경우, 폴더 참조가 달라지기에 링크가 깨질 수 있다. -->
<!-- 따라서 request객체를 통해 Context path를 얻어올 수 있다. -->
<p><%= request.getContextPath() %></p> 

<h5>같은 경로</h5>
<a href="/<%= request.getContextPath() %>/ch03/lecture/15-form-method.jsp">15번 파일로 이동!</a>

<h5>상위 경로</h5>
<a href="/<%= request.getContextPath() %>/ch03/17-path.jsp">17번 파일로 이동!</a> 

<h5>하위 경로</h5>
<a href="/<%= request.getContextPath() %>/ch03/lecture/sub/18-path.jsp">18번 파일로 이동!</a>

<h5>viewHeader 찾아가기</h5>
<a href="/<%= request.getContextPath() %>/ch03/lecture/textbook/viewHeaderList.jsp">viewHeaderList jsp file!</a>
</body>
</html>