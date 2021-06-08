<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<meta charset="UTF-8">
<title>Board Detail</title>
</head>
<body>
	<div class="container">
		<s2:navbar />
		
		<h1>${board.boardId }번 글 보기</h1>
		
		<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
		
			제목 : <br>
			<input name="title" id="input1" type="text" name="title" value="${board.title}" readonly> <br>
			
			본문 : <br>
			<textarea id="textarea1" name="body" readonly>${board.body }</textarea> <br>
			
			작성자 : <br>
			<input name="memberName" type="text" value="${board.memberName }" readonly> <br>
			
			작성시간 : <br>
			<input name="timeAgo" type="text" value="${board.timeAgo }" readonly>
			
			<c:if test="${sessionScope.userLogined.id == board.memberId }">
			
				<script>
					$(document).ready(function () {
						$("#button1").click(function () {
							$("#submit1, #submit2").removeAttr("hidden");
							$("#input1, #textarea1").removeAttr("readonly");
						});
						
						$("#submit2").click(function (e) { // event parameter
							e.preventDefault(); // 더 이상 event를 진행하지 않음 (아무일도 일어나지 않음)
							
							// text를 통한 확인
							if (confirm("삭제하시겠습니까?")) {
								
							// 경로 설정
							var path = "${pageContext.request.contextPath}/sample2/board/remove";
							
							$("#form1").attr("action", path); // action attribute의 값이 path로 변경된다
							
							// 그리고 전송
							$("#form1").submit();
							}
						});
					});
				</script>
				
				<br>
				<input type="number" value="${board.boardId }" name="boardId" hidden>
			
				<button id="button1" type="button">수정</button>
				
				<input id="submit1" hidden type="submit" value="전송">
				
				<input id="submit2" hidden type="submit" value="삭제">
				
			</c:if>
		</form>
		
		<s2:message />
		
	</div>
</body>
</html>