<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<form>
			<input name="fruits" type="checkbox" value="100"> 사과 <br>
			<input name="fruits" type="checkbox" value="150"> 바나나 <br>
			<input name="fruits" type="checkbox" value="200"> 딸기 <br>
			<input name="fruits" type="checkbox" value="300"> 키위 <br>
			<input name="fruits" type="checkbox" value="500"> 망고 <br>
			<input name="fruits" type="checkbox" value="700"> 수박 <br>

			<input type="submit" value="합계">
		</form>
	</div>

	<hr>
	<div class="container">
		합계 :
		<%
		String[] fruits = request.getParameterValues("fruits");
		int sum = 0;
		int num = 0;
		
		// Integer.valueOf, forEach
	if (fruits != null && fruits.length > 0) {
		for (int i = 0; i < fruits.length; i++) {
			num = Integer.parseInt(fruits[i]);
			sum += num;
		}
		out.print("<p>");
		out.print(sum);
		out.print("</p>");
	}
	%>
	</div>
</body>
</html>