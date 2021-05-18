<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	pageContext.setAttribute("a", "50");
	pageContext.setAttribute("b", "30");
	
	pageContext.setAttribute("d", "abc");
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
		<%-- 숫자로 변환 가능한 String이기 때문에 연산 가능--%>
		<%-- EL 문법과 JAVA 문법은 다르므로 주의하기 --%>
		\${a + b } = ${a + b } <br>				
		\${a - b } = ${a - b } <br>				
		\${a * b } = ${a * b } <br>				
		\${a / b } = ${a / b } <br>				
		\${a % b } = ${a % b } <br>				
		\${a mod b } = ${a mod b } <br>				
		
		<hr>
		<%-- 없는 값과의 연산 --%>
		\${a + c } = ${a + c } <br>
		\${a - c } = ${a - c } <br>
		\${a * c } = ${a * c } <br>
		\${a / c } = ${a / c } <br>
		<%-- \${a % c } = ${a % c } - Arithmetic Exception
		\${a mod c } = ${a mod c } --%>
		
		<hr>
		<%-- 숫자로 변환할 수 없는 String과의 연산 - NumberFormatException --%>
	</div>
</body>
</html>