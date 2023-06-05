<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그 사용해서 req_get01페이지로 상대경로 -->
	<a href="../../request/req_get01.jsp">req_get01 상대경로</a><br> 
	<!-- a태그 사용해서 req_get01페이지로 절대경로 -->
	<a href="/JSPBASIC/request/req_get01.jsp">req_get01 절대경로</a><br>
	
	<!-- a태그 사용해서 DemoServlet으로 상대경로 브라우저의 경로에 팁있음 -->
	<a href="../../banana">서블렛 상대</a><br>
	<!-- a태그 사용해서 DemoServlet으로 절대경로 -->
	<a href="/JSPBASIC/banana">서블렛 절대</a><br>
	
	<!-- contextPath = 톰캣이  프로젝트 구분하는 경로
	 경로명이 바뀌더라도 request.getContextPath()로 사용하면 실행시킬 수 있음)  -->
	<a href="<%= request.getContextPath()%>/banana"> 서블릿</a>
	
	<!-- jsptag 폴더 밑에 있는 이미지를 띄워주세요. img태그로 -->
	<img src="../../jsptag/뜐시기.png">상대춘식<br>
	<img alt="춘시기" src="/JSPBASIC/jsptag/뜐시기.png">절대춘식<br>
	
</body>
</html>