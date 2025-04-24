<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!-- 0 필요한 클래스의 패키지 임포트 -->

<%@ page import="emp_mybatis.service.EmpService" %>
 <%@ page import="emp_mybatis.model.EmpVO" %>
     
<!-- 1 한글처리 -->

<% request.setCharacterEncoding("UTF-8"); %>


<!-- 2 이전 화면의 입력값을 EmpVO의 멤버변수에 지정 -->

<jsp:useBean id="vo" class='emp_mybatis.model.EmpVO'>
	<jsp:setProperty name='vo' property="*"/>
</jsp:useBean> 

<!-- 3 서비스단의 modifyEmp() 호출-->

 <%
 	EmpService service = EmpService.getInstance();
 	service.modifyEmp(vo);
 	
 	 int empno = vo.getEmpno();
 %> 

 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>디비 화면 테스트  </title>
</head>
<body>
	<font size="3" color="#bb44cc">
		사원 정보 수정이 성공적으로 진행하였습니다. 
	</font><br/><br/><br/>
	<a href="SelectEmp.jsp"> [ 사원목록보기 ]</a><br/>
	<a href="ViewEmp.jsp?empno=<%=empno%>"> [ 사원 정보 보기 ]</a><br/>
</body>
</html>