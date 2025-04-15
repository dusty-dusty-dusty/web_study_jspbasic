<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");	
	String gender = request.getParameter("gender");	
	String occupation = request.getParameter("occupation");	
	String[] hobby = request.getParameterValues("hobby");
	String hobbyText="";
	/* if(hobby != null){
	for(int i=0; i<hobby.length; i++){
		hobbyText += hobby[i] + "/";
		}
	} */
	for(int i=0; hobby!=null && i<hobby.length; i++){
		hobbyText += hobby[i] +"/";
	}
	
%> 
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 폼의 입력값 처리 </title>
</head>
<body>
	<h2>폼의 입력값 넘겨받아 처리</h2>
	입력한 이름 : <%= name %> <br/>
	입력한 성별 : <%= gender %> <br/>
	입력한 직업 : <%= occupation %> <br/>
	선택한 취미 : <%= hobbyText %> 
</body>
</html>