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
<title>Main JSP File</title>
</head>
<body>
	<div class="container">

		<s2:navbar />
		<div class="jumbotron">
			<h1 id="main1" class="display-4">Welcome!</h1>
			<p id="main2" class="lead">박진아가 만든 페이지</p>
			<hr class="my-4">
			<p id="main2" >6월 11일에 만든 페이지입니다.</p>
			<a href="${pageContext.request.contextPath }/sample2/member/signup">
				<img class="homeButton" src="${pageContext.request.contextPath }/res/img/switch-on.png">
			</a>
		</div>

	</div>
</body>
</html>