<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 절대 경로 -->
<!-- 유의할 점은???  -->
<!-- 개발할 때 folder명과 운영할 때의 folder명이 다를 수 있다.  -->
<h5>같은 경로</h5>
<a href="/jsp-web/ch03/lecture/15-form-method.jsp">15번 파일로 이동!</a>

<h5>상위 경로</h5>
<a href="/jsp-web/ch03/17-path.jsp">17번 파일로 이동!</a> 

<h5>하위 경로</h5>
<a href="/jsp-web/ch03/lecture/sub/18-path.jsp">18번 파일로 이동!</a>

<h5>viewHeader 찾아가기</h5>
<a href="/jsp-web/ch03/lecture/textbook/viewHeaderList.jsp">viewHeaderList jsp file!</a>
</body>
</html>