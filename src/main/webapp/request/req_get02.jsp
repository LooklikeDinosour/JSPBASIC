<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    String id = request.getParameter("id"); //input 태그의 name 값 대입하기
    String pw = request.getParameter("pw");
    
    String[] agree = request.getParameterValues("agree"); //input태그의 복수개 name을 받을 때
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과 페이지</h3>
	
	아이디: <%=id %>
	비번:<%=pw %>
	체크박스:<%=Arrays.toString(agree)%>


</body>
</html>