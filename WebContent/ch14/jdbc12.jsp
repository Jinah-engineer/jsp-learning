<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Last Name</th>
					<th>First Name</th>
					<th>Notes</th>
				</tr>
				<c:forEach items="${employees }" var="emp">
					<tbody>
						<tr>
							<td>${emp.id }</td>
							<td>${emp.lastName }</td>
							<td>${emp.firstName }</td>
							<td>${emp.notes }</td>
						</tr>
					</tbody>
				</c:forEach>
			</thead>
		</table>
	</div>
</body>
</html>