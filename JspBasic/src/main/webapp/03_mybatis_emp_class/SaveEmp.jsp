<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import='emp_mybatis.model.*'%>
<%@ page import='emp_mybatis.service.*'%>

<!-- 0. 넘겨오는 값의 한글 처리 -->
<% request.setCharacterEncoding("UTF-8"); %>
 
<!-- 1. 화면의 입력값을 받아서 vo의 멤버변수지정 --> 
<jsp:useBean id="vo" class='emp_mybatis.model.EmpVO'>
	<jsp:setProperty name='vo' property="*"/>
</jsp:useBean> 
 
 <!-- 2. 서비스단의 insertEmp() 호츌 -->
 <%
 	EmpService service = EmpService.getInstance();
 	service.insertEmp(vo);
 %> 
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>디비 화면 테스트  </title>
</head>
<body>
	<font size="3" color="#bb44cc">
		사원 등록이 성공적으로 진행하였습니다. 
	</font><br/><br/><br/>
	<a href="SelectEmp.jsp"> [ 사원목록보기 ]</a><br/>
	<a href="ViewEmp.jsp?empno=<%=vo.getEmpno()%>"> [ 입력한 사원 정보 보기 ]</a><br/>
</body>
</html>