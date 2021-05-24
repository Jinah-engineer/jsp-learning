<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" scope="request" class="ch08.MemberInfo" />

<%
	member.setId("jinahpark");
	member.setName("진아");
%>

<jsp:forward page="useObject.jsp" />
