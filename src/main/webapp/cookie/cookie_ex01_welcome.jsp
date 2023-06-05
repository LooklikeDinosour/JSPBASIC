<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	//1. name값이 user_id인 쿠키를 찾는다.
	Cookie[] arr = request.getCookies(); // 꼭 한개가 아니다.
	String name="";
	if(arr != null) { //쿠키가 존재한다면
		for(Cookie c : arr) {
	 	  	if(c.getName().equals("user_id")) { //쿠키가 있음
				name = c.getValue(); //쿠키 값
			}	
		}
 	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>결과페이지</h3>
	<%--
		user_id쿠키를 확인해서 "xxx님 환영합니다"를 화면에 출력 
		--%>
	<%=name	%>님 환영합니다.

</body>
</html>