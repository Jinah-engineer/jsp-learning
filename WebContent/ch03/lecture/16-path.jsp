<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  상대 경로 -->
<!-- 마지막 / 기준으로 port 번호, 경로가 바뀌지 않는다. -->
<h5>같은 경로</h5>
<a href="15-form-method.jsp">15번 파일로 이동!</a>

<h5>상위 경로</h5>
<a href="../17-path.jsp">17번 파일로 이동!</a> 
<!-- jsp 위에 있었다면 ../../blahblah -->

<h5>하위 경로</h5>
<a href="sub/18-path.jsp">18번 파일로 이동!</a>

<h5>viewHeader 찾아가기</h5>
<a href="textbook/viewHeaderList.jsp">viewHeaderList jsp file!</a>
</body>
</html>