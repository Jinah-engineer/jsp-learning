<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="nav">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<i class="fas fa-code"></i>
  <a class="navbar-brand" href="#">HomePage</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/main">메인 <span class="sr-only">(current)</span></a>
      </li>
      <c:if test="${empty sessionScope.userLogined }">
        <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/signup">회원가입</a>
      </li>
       <li class="nav-item">
	        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/login">로그인</a>
	      </li>
	      </c:if>
	      
	   <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          게시판
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="<%= request.getContextPath() %>/sample2/board/write">글쓰기</a>
	          <a class="dropdown-item" href="<%= request.getContextPath() %>/sample2/board/list">게시글 목록</a>
	        </div>
      </li>
      
      <c:if test="${sessionScope.userLogined.numberOfBoard ge 2 && sessionScope.userLogined.numberOfComment >= 1}">
        <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/list">회원 목록 보기</a>
      </li>
      </c:if>
      
      <c:if test="${not empty sessionScope.userLogined }">
      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" 
	        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          나의 정보
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="<%= request.getContextPath() %>/sample2/member/info">나의 정보 관리</a>
	          <a class="dropdown-item" href="<%= request.getContextPath() %>/sample2/member/logout">로그아웃</a>
	        </div>
      </li>
        </c:if>
    </ul>
  </div>
</nav>
</div>