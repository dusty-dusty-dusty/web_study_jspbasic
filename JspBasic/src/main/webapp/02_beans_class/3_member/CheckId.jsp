<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import='member.beans.*' %>

<%

	String id=request.getParameter("id");
	//System.out.println("ID값:"+ id );
	
	MemberDao dao = MemberDao.getInstance();
	boolean result = dao.isDuplicatedId(id);
	
 %> 
  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 아이디 중복 확인 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$('#btn').click(function(){
		var txt = $('input[name="id"]').val();
		//alert(txt);
		opener.frm.id.value=txt;
	})
})
</script>

</head>
<body>
<%
	if(  result ) {
%>
		사용중인 아이디가 있습니다. 다시 입력하여 주십시오.
<%  }else { %>
		사용할 수 있는 아이디입니다.
<%  } %>

<form>
   <input type ='text' name ='id' value='<%=id%>'>
   <input type ='submit' value='아이디중복검사'>
</form>

<hr/>
<input type='button' value='해당id적용' id='btn'>


</body>
</html>