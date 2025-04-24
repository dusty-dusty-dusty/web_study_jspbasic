<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="emp_mybatis.service.*, java.util.*" %>  
<%@ page import="emp_mybatis.model.*" %>  
<%
	EmpService service = EmpService.getInstance();
	List<EmpVO> list = service.selectEmp();
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">  
<title></title>
</head>
<body>

<h2>사원정보</h2>
<!--  출력 -->
<table border='1'>
<tr><td>사번</td><td>사원명</td><td>업무</td><td>부서번호</td></tr>


	<% for(EmpVO vo : list) { %>
		<tr>
			<td><%= vo.getEmpno() %></td>
			<td><a href="ViewEmp.jsp?empno=<%= vo.getEmpno() %>"><%= vo.getEname() %></a></td>
			<td><%= vo.getJob()%></td>
			<td><%= vo.getDeptno()%></td>
		</tr> 
	<%} %>
</table>

</body>
</html>