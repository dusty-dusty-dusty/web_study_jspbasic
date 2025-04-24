<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ page import="emp_mybatis.service.EmpService" %>
 <%@ page import="emp_mybatis.model.EmpVO" %>
 
 
 <%
 	int empno = Integer.parseInt(request.getParameter("empno"));
 
 	EmpVO result = EmpService.getInstance().viewEmp(empno);
 %>   
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 디비 테스트 화면 </title>
<!-- <link href="css/myform.css" rel="stylesheet" type="text/css"> -->
<script type="text/javascript">
	window.onload = function(){
		// 목록 보기 버튼이 눌렸을 때 
		document.getElementById('listBtn').onclick = function(){
			location.href = "SelectEmp.jsp";
		}
		// 삭제 버튼이 눌렸을 때
		document.getElementById('deleteBtn').onclick = function(){			
			location.href = "DeleteEmp.jsp?empno=" + document.frm.empno.value;
		}
	}
	
</script>
</head>
<body>
	<form action='ModifyEmp.jsp'  method='post' name='frm'>
		<fieldset>
			<legend> 우리 회사 사원 관리 </legend>
			<ol>
				<li><label for="empno">사번</label> <input id="empno" name='empno' type="text" value="<%=result.getEmpno()%>"  readonly='readonly'/></li>
				<li><label for="ename">사원명</label> <input id="ename" name="ename" type="text" value="<%=result.getEname()%>"/></li>
				<li><label for="job">업무</label> <input id="job" name="job" type="text" value="<%=result.getJob()%>"/></li>
				<li><label for="deptno">부서</label> <input id="deptno" name="deptno"  type="text" value="<%=result.getDeptno()%>"/></li>
			</ol>
			<ol>
				<li>
				<input value="수정" type="submit" />
				 <input value="삭제" type="button" id='deleteBtn'/>
				 <input value="목록보기" type="button" id='listBtn'/>
				 </li>
			</ol>
		</fieldset>
	</form>
</body>
</html>