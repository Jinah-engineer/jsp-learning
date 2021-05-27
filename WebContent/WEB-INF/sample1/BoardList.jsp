<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook"%>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1"%>


<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<script>
	
</script>

<title>Insert title here</title>
</head>
<body>

	<s1:navbar />

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-8">
			<form action="${pageContext.request.contextPath }/sample1/remove" id="form1" method="post">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Check</th>
							<th scope="col">Number</th>
							<th scope="col">제목</th>
							<th scope="col">본문</th>
							<th scope="col">작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="board" varStatus="status">
							<tr id="check1">
								<td><input name="remove" value="${status.index }" type="checkbox"/></td>
								<td>${status.count }</td>
								<td><a href="detail?index=${status.index }">${board.title }</a></td>
								<td>${board.body }</td>
								<td>${board.user }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<button type="submit" class="btn btn-primary" id="button2">삭제</button>
			</form>


			</div>
		</div>
	</div>
</body>
</html>