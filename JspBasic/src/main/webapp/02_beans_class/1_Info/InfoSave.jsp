<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>

<%@ page import='info.bean.infoVO' %>

<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="vo" class='info.bean.infoVO'>
	<%-- <jsp:setProperty name='vo' property='name'/>
	<jsp:setProperty name='vo' property='id'/> --%>
	<jsp:setProperty name='vo' property='*'/>
</jsp:useBean>

<!DOCTYPE html>
<html>
<body>
	
   <h2>  당신의 신상명세서 확인 </h2>
   이   름  : <jsp:getProperty property="name" name="vo"/><br/>
   주민번호 : <jsp:getProperty property="id" name="vo"/><br/>
   성  별   :<jsp:getProperty property="gender" name="vo"/><br/>  
   맞습니까???? 

	
	
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <%=vo.getName() %><br/>
	주민번호 : <%=vo.getId() %><br/>
	성  별   : <%=vo.getGender() %><br/>  
	맞습니까????
</body>
</html>