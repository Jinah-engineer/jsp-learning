<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="start" %>
<%@ attribute name="end" %>

<div>
	
	start : ${start }
	
	<br>
	
	end   : ${end }
	
</div>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    
    <c:forEach var="i" begin="${start }" end="${end }">
    <li class="page-item"><a class="page-link" href="#">${i }</a></li>
    </c:forEach>
    
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>