<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 디비 테스트 화면 </title>

</head>
<body>
	<form action='SaveEmp.jsp'  method='post'>
		<fieldset>
			<legend> 우리 회사 사원 관리 </legend>
			<ol>
				<li><label for="empno">사번</label> <input id="empno" name='empno' type="text"  /></li>
				<li><label for="ename">사원명</label> <input id="ename" name="ename" type="text"  /></li>
				<li><label for="job">업무</label> <input id="job" name="job" type="text"  /></li>				
				<li><label for="deptno">부서</label> <input id="deptno" name="deptno"  type="text"  /></li>
			</ol>
			<ol>
				<li><input value="확인" type="submit" /> <input value="취소" type="reset" /></li>
			</ol>
		</fieldset>
	</form>
</body>
</html>