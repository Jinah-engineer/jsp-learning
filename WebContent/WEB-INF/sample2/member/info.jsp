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
<title>Info JSP File</title>

<script>
	$(document).ready(function () {
		$("#button1").click(function () {
			$("#input2, #input3, #input4").removeAttr("readonly");
			$("#submit1").removeAttr("hidden");
		});
		
		$("#submit2").click(function (e) {
			// preventDefault : event를 더 이상 실행하지 못하게 하는 method
			e.preventDefault();
			console.log("submit2 clicked..!");
			
			var con = confirm("탈퇴하시겠습니까?")
			
			console.log(con);
			
			if (con) {
				$("#form2").submit();
			} 
		});
	});
</script>
</head>

<body>
	<div class="container">
		<s2:navbar />
		
		<h1 id="justFont" style="font-size: 50px">나의 정보</h1>
		
		<form id="form1" action="${pageContext.request.contextPath }/sample2/member/modify" method="post">
		
			ID : <br> 
			<input id="input1" type="text" name="id" value="${member.id }" readonly> <br> 
			
			Password : <br> 
			<input id="input2" type="password" name="password" value="${member.password }" readonly> <br> 
			
			Name : <br>
			<input id="input3" type="text" name="name" value="${member.name }" readonly> <br> 
			
			Birth Day : <br> <input id="input4" type="date" name="birth" value="${member.birth }" readonly> <br>

			<button id="button1" type="button">수정</button>

			<input id="submit1" type="submit" value="전송" hidden>

		</form>

		<s2:message />
	</div>
	
	<div>
		작성한 게시물 : <span>${member.numberOfBoard }</span>개 <br>
		작성한 댓글 : <span>${member.numberOfComment }</span>개 <br>
 	</div>
		
	<div class="container">
		<form id="form2" action="${pageContext.request.contextPath }/sample2/member/remove" method="post">
			<input id="submit2" type="submit" value="탈퇴">
		</form>
	</div>

</body>
</html>