<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	pageContext.setAttribute("pageAttr1", "pageVal1");
	request.setAttribute("reqAttr1", "reqVal1");
	session.setAttribute("sesAttr1", "sesVal1");
	application.setAttribute("appAttr1", "appVal1");
%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%
			out.print(pageContext.getAttribute("pageAttr1"));
		%>
		<br>
		${pageAttr1 }
		
		<hr>
		<%	out.print(request.getAttribute("reqAttr1")); %>
		${reqAttr1 }
		
		<hr>
		<%= session.getAttribute("sesAttr1") %>
		<br>
		${sesAttr1 }
		
		<hr>
		<%= application.getAttribute("appAttr1") %>
		<br>
		${appAttr1 }
		
		<%-- 위 각각 두 코드는 모두 같은 출력 결과를 갖는다. --%>
		
		<%-- 이렇게 없는 값을 출력하고자 할 때, java 코드는 null 값을 출력하지만, --%>
		<%-- EL은 값을 출력하지 않는다. Null 값의 출력 여부가 차이점.  --%>
		<hr>
		<%= request.getAttribute("reqAttr0") %>
		${reqAttr0 }		
		
	</div>
</body>
</html>