<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 파일을 복사한다. -->
<!-- But 중복된 element들이 많은 정상적인 코드로 나타나지 않는다. -->
<!-- 따라서 기본적인 element(head, body등)을 지우고, 중복이 없게끔 필요한 코드 element들만 작성해준다. -->

<!-- WEB-INF >>> 접근할 수 없는 폴더 (공개하고 싶지 않은 파일을 저장할 수 있다) -->
<!-- WEB-INF는 Context Root를 쓸 필요없다 -->
<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<button class="btn btn-primary">Bootstrap</button>
	</div>

</body>
</html>