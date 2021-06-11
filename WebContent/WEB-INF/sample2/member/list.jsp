<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<!-- Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/style.css">

<meta charset="UTF-8">
<title>List JSP File</title>
</head>
<body>
	<div class="container">
	<s2:navbar></s2:navbar>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>ID</th>
					<th>Password</th>
					<th>Name</th>
					<th>Birth</th>
					<th>Inserted</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${members }" var="member" varStatus="status">
					<tr>
						<td>${status.count }</td>
						<td>${member.id }</td>
						<td>${member.password }</td>
						<td>${member.name }</td>
						<td>${member.birth }</td>
						<td>${member.inserted }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>