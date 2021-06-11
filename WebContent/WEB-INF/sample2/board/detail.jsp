<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<!-- Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/style.css">

<meta charset="UTF-8">
<title>Board Detail</title>
</head>
<body>
	<div class="container">
		<s2:navbar />
		
		<!-- 왜 space bar 기능이 되는지? -->
		<span id="justFont" style="font-size: 50px">${board.boardId }번 글 보기</span>
		<a href="${pageContext.request.contextPath }/sample2/member/like">
			<img id="like" class="homeButton" src="${pageContext.request.contextPath }/res/img/like2.png">
		</a>
		
		<!-- Like -->
		<form action="${pageContext.request.contextPath }/sample2/board/like" method="post">
			
		</form>
		
		<br>
		
		<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
		
		<div class="form-group">
		    <label for="title">제목</label>
			<input name="title" class="form-control" id="input1" type="text" name="title" value="${board.title}" readonly> <br>
  		</div>
		<br>	
		
		<div class="form-group">
		    <label for="body">본문</label>
			<textarea class="form-control" id="textarea1" name="body" readonly>${board.body }</textarea> <br>
  		</div>
		<br>		

		<div class="form-group">
		    <label for="memberName">작성자</label>
			<input name="memberName" class="form-control" type="text" name="title" value="${board.title}" readonly> <br>
  		</div>
		<br>	
		
		<div class="form-group">
		    <label for="timeAgo">작성시간</label>
			<input name="timeAgo" class="form-control" type="text" value="${board.timeAgo }" readonly>
  		</div>
		<br>
			
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
				<input type="number" class="form-control" value="${board.boardId }" name="boardId" hidden>
			
				<div class="col-2">
					<button id="button1" class="btn btn-success" type="button">수정</button> <br>
					<input id="submit1" class="form-control" hidden type="submit" value="전송">
					<input id="submit2" class="form-control" hidden type="submit" value="삭제">
				</div>
				
			</c:if>
		</form>
		
		<s2:message />
		
	</div>
	
	<c:if test="${not empty sessionScope.userLogined }">
	<div class="container mt-5">
		<form action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
			<div class="col-4">
				<div class="form-group">
					<textarea name="comment" class="form-control"></textarea>
		  		</div>
		  		<br>
		  		
		  		<div class="form-group">
  				    <label for="memberId">댓쓴이 ID</label>
					<input name="memberId" class="form-control" type="text" value="${sessionScope.userLogined.id }" readonly>
		  		</div>
		  		<br>
		  		
		  		<div class="form-group">
  				    <label for="boardId">댓쓴이의 게시판 ID</label>
					<input name="boardId" class="form-control" type="text" value="${board.boardId }" readonly>
		  		</div>
		  		<br>
					<input class="form-control" type="submit" value="댓글 작성">
			</div>
		</form>
	</div>
	</c:if>
	
	<div class="container mt-5">
		<c:forEach items="${comments }" var="comment">
			<script>
				$(document).ready(function () {
					var $form = $('#' + 'comment${comment.id }Form');
					var $modifyButton = $('#comment${comment.id }Button1');
					var $deleteButton = $('#' + 'comment${comment.id }Button2');
					var $submitButton = $('#' + 'comment${comment.id }Button3');
					
					$modifyButton.click(function (e) {
						e.preventDefault();
						$form.find("textarea").removeAttr("readonly");
						$(this).attr("hidden", "hidden");
						$submitButton.removeAttr("hidden");
					});
					
					$deleteButton.click(function(e) {
						e.preventDefault();
						
						if (confirm("삭제하시겠습니까?")) {
							$form.attr("action", "${pageContext.request.contextPath }/sample2/comment/remove");
							$form.submit();
						}
					});
				});
			</script>
			<div>
			<form id="comment${comment.id }Form" 
				  action="${pageContext.request.contextPath }/sample2/comment/modify" 
				  method="post">
				 
				<input name="commentId" value="${comment.id }" hidden /> 
				<input name="boardId" value="${board.boardId }" hidden />
				<textarea name="comment" readonly>${comment.comment }</textarea>
				<span>${comment.memberName }</span>
				<span>${comment.timeAgo }</span>
				
			<c:if test="${sessionScope.userLogined.id == comment.memberId }">
					<button id="comment${comment.id }Button1">수정</button>
					<button id="comment${comment.id }Button3" hidden>전송</button>
					<button id="comment${comment.id }Button2">삭제</button>
			</c:if>				
			</form>
			</div>
		</c:forEach>
	</div>
	
</body>
</html>