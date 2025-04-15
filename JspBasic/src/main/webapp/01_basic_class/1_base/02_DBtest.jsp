<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<%@ page errorPage= "02_NormalErrorPage.jsp" %>


<%
//0. JDBC 필요한 변수 선언
String driver ="oracle.jdbc.driver.OracleDriver";
String url    ="jdbc:oracle:thin:@127.0.0.87:1521:xe";
String user   ="scott";
String pass   ="tiger";


	//1. 드라이버로딩
	Class.forName(driver);
	//2. 연결객체 얻어오기
	Connection con = DriverManager.getConnection(url, user, pass);
	//3. sql 문장 만들기 
	String sql = "SELECT * FROM emp";
	//4. 전송객체 얻어오기
	PreparedStatement ps = con.prepareStatement(sql);
	//5.전송
	ResultSet rs = ps.executeQuery();

%>


<!-- jsp에서는 db 연동코드 작성하지 않고 결과만 출력 -->

<!DOCTYPE html>
<html><head><title> 디비 테스트 </title>
</head>
<body>
 
<div align='center'>
<table border='2' cellSpacing='3'>

  <tr class="title">
    <td>사번</td>
    <td>사원명</td>
    <td>업무</td>
    <td>월급</td>
    <td>부서번호</td></tr>

	<!-- (6) 결과출력 -->
	<% while(rs.next()){ %>
	  <tr>
		<td><%= rs.getString("EMPNO") %></td>
		<td><%= rs.getString("ENAME") %></td>
		<td><%= rs.getString("JOB") %></td>
		<td><%= rs.getString("SAL") %></td>
		<td><%= rs.getString("DEPTNO") %></td>
	  </tr>
	<% } //end of while %>>

</table>
</div>
</body>
</html>
