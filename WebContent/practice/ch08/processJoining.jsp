<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="memberInfo" class="ch08.MemberInfo" />

<jsp:setProperty name="memberInfo" property="*" />
<%--
<jsp:setProperty name="memberInfo" property="id" param="id"/>
<jsp:setProperty name="memberInfo" property="password" param="password"/>
<jsp:setProperty name="memberInfo" property="name" param="name"/>
<jsp:setProperty name="memberInfo" property="registerDate" param="registerDate"/>
<jsp:setProperty name="memberInfo" property="email" param="email"/>
 --%>

<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<meta charset="UTF-8">
<title>가입</title>
</head>
<body>
	<div class="container">

		<table class="table table-striped" width="400" border="1"
			cellpadding="0" cellspacing="0">
			<tr>
				<td>아이디</td>
				<td><jsp:getProperty name="memberInfo" property="id" /></td>
				<td>암호</td>
				<td><jsp:getProperty name="memberInfo" property="password" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><jsp:getProperty name="memberInfo" property="name" /></td>
				<td>이메일</td>
				<td><jsp:getProperty name="memberInfo" property="email" /></td>
			</tr>
		</table>

	</div>
</body>
</html>