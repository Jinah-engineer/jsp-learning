<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<!-- java file import -->
<%@ page import="ch07.Page" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>
w
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// setAttribute로 설정하고, 다른 파일(ex-sub)에서 getAttribute를 써서 
	// 필드, 메소드(즉, 매개변수들)을 얻어올 수 있다.
	Page p = new Page(3, 10);
	request.setAttribute("page", p); // String, Object(polymorphism)
	
	// 여기 밑에서는 필수적인 코드가 아님. setAttribute로 속성 설정만 하면 된다.
	// ? 근데 구구단에서는 변수를 못끌어왔는데(jsp include), 여기서는 request라는 객체
	// 때문에 가능한건지 궁금궁금
	Object o = request.getAttribute("page"); // String name (return type - Objct)
	
	// System.out.println(o == p); // true (같은 객체인지 비교)
	
	Page p2 = (Page) o;
	
	int s = p2.getStart();
	int e = p2.getEnd();
	
	System.out.println(s); // 3
	System.out.println(e); // 10
%>

	<div class="container">
		<jsp:include page="07-request-attribute-sub.jsp">
		</jsp:include>
	</div>
</body>
</html>