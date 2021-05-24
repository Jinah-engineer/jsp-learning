<%@ tag language="java" pageEncoding="UTF-8"%>

<%-- Map --%>
<%@ tag dynamic-attributes="attrs" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ attribute name="req" %>

<div>
	<c:forEach items="${attrs }" var="entry">
		${entry.key } : ${entry.value }	<br>
	</c:forEach>
</div>