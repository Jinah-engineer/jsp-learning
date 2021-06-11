<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<!-- Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/style.css">

<meta charset="UTF-8">
<title>Write JSP File</title>
</head>
<body>
	
	<div class="container">
	<s2:navbar />
	
		<h1 id="justFont" style="font-size: 50px">글쓰기</h1>
		<form action="${pageContext.request.contextPath }/sample2/board/write" method="post">
			<div class="form-group">
			    <label for="title">제목</label>
			    <input type="text" class="form-control" id="input1" name="title">
			    <small id="texthelp" class="form-text text-muted">글자 수 제한은 어떻게 넣지</small>
		  	</div>
		  	
			<br>
			
			<div class="form-group">
			    <label for="body">본문</label>
				<textarea name="body" class="form-control" id="textarea1"></textarea> <br>
			    <small id="bodyhelp" class="form-text text-muted">글자 수 제한은 어떻게 넣지</small>
		  	</div>
			
			<br>
			
			<!-- 버튼 이미지 어떻게 넣지 -->
			<input type="submit" value="게시하기">
			
			
			
		</form>
			
	</div>
</body>
</html>