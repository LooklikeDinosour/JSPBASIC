<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
	
	//세션에 값이 있다면 로그인
	String id = (String)session.getAttribute("id");
	String nn = (String)session.getAttribute("nn");
	
	//로그인한 사람만 접근이 가능
	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("session_login.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=id%>(<%=nn%>)님 환영합니데이.

	<a href="session_logout.jsp">로그아웃</a>
	
</body>
</html>