<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="ch07.Page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<% request.setCharacterEncoding("utf-8"); %>

<%
	Page p = (Page) request.getAttribute("page");

	int start = p.getStart();
	int end = p.getEnd();
%>

<nav aria-label="Page navigation example">
	<ul class="pagination">
		<li class="page-item"><a class="page-link" href="#">Previous</a></li>
		<c:forEach var="p" begin="<%= start %>" end="<%= end %>">
			<li class="page-item"><a class="page-link" href="#">${p }</a></li>
		</c:forEach>
		<li class="page-item"><a class="page-link" href="#">Next</a></li>

	</ul>
</nav>

