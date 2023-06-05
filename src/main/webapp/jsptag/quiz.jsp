<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //실행될때마다 랜덤한 로또번호를 저장하고 출력해주는 프로그램코드를 작성해보세요.
    //방법은 자유
	
    Random rd = new Random();
    
    Set<Integer> set = new HashSet<>();
    Set<Integer> set2 = new HashSet<>();
    
    while(true) {
    	set.add(rd.nextInt(45) + 1);	
    
    	if(set.size() == 6){
    	break;
    	}
    }    
    
    while(set2.size()<6) {
    	set2.add(rd.nextInt(45)+1);
    }
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	두~두~두~두~두
	<br/>
	이번주 로또번호는<br/>
	<%=set.toString() %>
	
	<% for(int a : set2) { %>
	<%=a %>
	<%} %>
	

</body>
</html>