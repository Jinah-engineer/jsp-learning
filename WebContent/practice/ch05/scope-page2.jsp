<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h1>여기는 scope-page2 파일입니다.</h1>

<h3> page attribute : <%= pageContext.getAttribute("page-value3") %></h3>
<h3> request attribute : <%= request.getAttribute("req-attr3") %></h3>