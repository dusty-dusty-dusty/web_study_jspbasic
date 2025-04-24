<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="emp_mybatis.service.EmpService" %>

<%
	//1 사버을 이전ㅇ화면에서 넘겨받기
		int empno = Integer.parseInt(request.getParameter("empno"));

	// 서비스의 deleteEmp 함수호줄
	EmpService.getInstance().deleteEmp(empno);

	// 3 리스트 목록보기 화면으로 리다이렉트
	response.sendRedirect("SelectEmp.jsp");
%>