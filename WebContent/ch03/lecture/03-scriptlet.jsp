<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int sum = 0;

for (int i = 0; i <= 100; i++) {
	sum += i;
}
%>

<p> 1부터 100까지의 합은

<%  
out.write(sum);
/* write method --> int값을 char값으로 출력한다. */
out.print(sum); // 값 출력
%>

</p>
</body>
</html>