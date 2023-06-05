<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String age = request.getParameter("age");
	String name = request.getParameter("name");

	int a = Integer.parseInt(age);
	
	if(a >= 20) {
		response.sendRedirect("res_ex01_ok.jsp");
	} else {
		response.sendRedirect("res_ex01_no.jsp");
	}
%>
	<!-- HTML 분야는 내용이 없어서 잘라내도 괜찮다. -->
