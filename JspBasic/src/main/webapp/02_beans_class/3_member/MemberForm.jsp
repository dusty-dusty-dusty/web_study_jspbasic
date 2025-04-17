<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 회원가입  </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">

/* $(function(){
	$('#btnIdCheck').click(function(){
		
		var id = $('input[name="id"]').val();
		//alert(id);
		
		var winobj = window.open('CheckId.jsp?id='+id,'','width=500, height=400');
})

}); */

$(function(){
	$('#btnIdCheck').click(function(){
		
		var param = { id : $('input[name="id"]').val() };
		// [2] Ajax 요청
		$.ajax({
			type: 'get',
			data: param,
			url: 'IdCheck.jsp',
			dataType: 'text',
			success: function(data) {
				// 앞뒤 공백 제거
				if(data.trim() == 'YES') {
					$('#idmessage').text('이미 사용중인 아이디입니다').show();
				} else {
					$('#idmessage').text('사용 가능합니다').show();
				}
			},
			error: function(err) {
				alert('요청 실패');
				console.log(err);
			}
		});
	});
});
</script>
</head>
<body>

<h1>회원가입서 작성하기</h1>
 
	<form action="InsertMember.jsp" method="post" name="frm">
		<table>
			<tr>
				<td width="100">
				<font color="blue">아이디</font>
				</td>
				<td width="100">
				<input type="text" name="id">
				<input type="button" value="중복확인" id='btnIdCheck'><br/>
				<div id="idmessage" style="display:none;"></div>
				
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호</font>
				</td>
				<td width="100">
				<input type="password" name="password"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">비밀번호학인</font>
				</td>
				<td width="100">
				<input type="password" name="repassword"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">이름</font>
				</td>
				<td width="100">
				<input type="text"  name="name"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">전화번호</font>
				</td>
				<td>
				<input type="text" size="15" name="tel"/>
				<br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				<font color="blue">주소</font>
				<td>
				<input type="text" size="50" name="addr"/><br/>
				</td>
			</tr>
			<tr>
				<td width="100">
				 <!--로그인 버튼-->
				 <input type="submit" value="회원가입">
				</td>
				<td width="100">
				<input type="reset" name="cancel" value="취소"><br/>
				</td>
			</tr>
		</table>
	</form>



 </body>
</html>
    