<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import='basic.*' %>    
    
<%
	int empno = Integer.parseInt(request.getParameter("sabun"));
	EmpDao dao = new EmpDao();
	EmpVO  result = dao.selectByPK(empno);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	사원명 :  <%= result.getEname() %> <br/>
	월급 : 	<%= result.getSal() %> <br/>
	업무 :	<%= result.getJob() %> <br/>
	부서번호 :	<%= result.getDeptno() %> 
	
	
</body>
</html>