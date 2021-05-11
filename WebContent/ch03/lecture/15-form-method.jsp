<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- attribute로 post를 설정해주면 주소창에 관련 속성 정보가 표시되지 않는다. -->
	<!-- get 방식 : 요청 URL에 파라미터를 붙여서 전송-->
	<!-- POST 방식 : EPDLXJ DUDDURDMF DLDYDGOTJ VKFKALXJFMF WJSTHD -->
	<form action="15-form-method2.jsp" method="post">
		아이디 : <input type="text" name="id"> <br>
		암호 : <input type="password" name="pw"> <br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>