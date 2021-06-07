<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Board Detail</title>
</head>
<body>
	<div class="container">
		<s2:navbar />
		
		<h1>${board.boardId }번 글 보기</h1>
		
			제목 : <br>
			<input type="text" name="title" value="${board.title}" readonly> <br>
			
			본문 : <br>
			<textarea name="body" readonly>${board.body }</textarea> <br>
			
			작성자 : <br>
			<input type="text" value="${board.memberName }" readonly> <br>
			
			작성시간 : <br>
			<input type="text" value="${board.timeAgo }" readonly>
	</div>
</body>
</html>