<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>List JSP File</title>
</head>
<body>
	<div class="container">
		<s2:navbar />

		<h1>글 목록</h1>
		
		<s2:message />

		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성시간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boards }" var="board">
					<tr>
						<td>${board.boardId }</td>
						<td><a
							href="${pageContext.request.contextPath }/sample2/board/detail?id=${board.boardId}">${board.title }</a></td>
						<td>${board.memberName }</td>
						<td>${board.timeAgo }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>