<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	fmt는 형변환을 다루는 기능을 가지고 있습니다.
	
	Integer.parseInt() = 스트링 => 인트
	
	parse => 다른타입으로 형 변환
	format => 같은타입의 형태를 변환
	
		
	--%>

	<h3>formatNumber, parseNumber, formatDate, parseDate</h3>
	
	<h3>1. formatDate => (날짜 데이터 -> 날짜 형식으로 변환)</h3>
	
	<c:set var="a" value="<%=new Date()%>"/>
	${a }<br>
	
	<fmt:formatDate var="a01" value="${a }" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
	<fmt:formatDate var="a02" value="${a }" pattern="yyyy-MM-dd"/>
	${a01 }<br>
	${a02 }
	
	<h3>2. parseDate => 문자데이터를 -> 날짜형식으로 변환}</h3>
	<fmt:parseDate value="2023-06-07" pattern="yyyy-MM-dd"/><br>
	<fmt:parseDate value="2023년06월07일 15시28분03초" pattern="yyyy년MM월dd일 HH시mm분ss초"/><br>

	<hr>
	
	<h3>3. formatNumber => {숫자데이터 => 숫자형식의 변환} </h3>
	
	<c:set var="b" value="20000" />
	
	<fmt:formatNumber value="${b}" pattern="00,000원"/><br>
	<fmt:formatNumber value="${b}" pattern="0000.00원"/><br>
	
	<h3>4. parseNumber => (문자데이터 => 숫자로 형변환)</h3>
	<fmt:parseNumber value ="20,000원" pattern="00,000원"/>
	<fmt:parseNumber value ="123abc원" pattern="000abc원"/>
	
	<hr/>
	<h3>2020년 05월 03일 으로 변경해서 출력</h3>
	<c:set var="TIME_A" value="2020/05/03" />
    <c:set var="TIME_C" value="2020-05-03 21:30:22" />
    <c:set var="TIME_D" value="<%=new Date() %>"/>
    ${TIME_C }
    
    <fmt:parseDate var="a" value="${TIME_A}" pattern="yyyy/MM/dd"/>
    <fmt:formatDate var="fa" value="${a }" pattern="yyyy년MM월dd일"/>
    ${fa }
    
    <fmt:parseDate var="b" value="${TIME_C}" pattern="yyyy-MM-dd HH:mm:ss"/>
    <fmt:formatDate var="fb" value="${b }" pattern="yyyy년MM월dd일"/>
    ${fb}
    
    
    <fmt:parseNumber var="dd" value="${TIME_D }" pattern="yyyyMMdd"/>
    ${dd}
    
  
    
	
	
</body>
</html>