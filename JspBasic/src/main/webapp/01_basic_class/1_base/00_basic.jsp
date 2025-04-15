<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 얘는 잘 안쓴다고합니다. --> 
<%! String name; %>

<% name="홍길동"; 
	String msg = "오늘도 행복하세요~";
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본구성</title>
</head>
<body>
	
	안녕하세요 <%= name %>님 <hr/>
	메세지 : <%= msg %>
		
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
	<%// JAVA 주석 %>
	<% /* 자바주석 */ %>	
		
</body>
</html>