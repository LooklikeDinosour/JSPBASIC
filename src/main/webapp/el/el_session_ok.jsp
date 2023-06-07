<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//java로 세션 값 참조
	//String name = (String)session.getAttribute("name");
	%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션값은 sessionScope로 표현하기. 생략할수 있지만, 어디서 가져왔는지 헷갈릴 수 있어서</h3>
	${sessionScope.name }<br/>
	${sessionScope.id }<br/>
	
	${applicationScope.count }<br/>

</body>
</html>