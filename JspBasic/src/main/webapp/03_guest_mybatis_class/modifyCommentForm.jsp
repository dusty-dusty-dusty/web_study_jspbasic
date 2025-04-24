<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="mybatis.guest.model.Comment" %>   
 <%@ page import="mybatis.guest.service.CommentService" %> 
 
   <!-- 키에 해당하는 글번호를 넘겨받아 서비스의 메소드 호출  -->
  <% 
  long commentNo = Integer.parseInt( request.getParameter("cId"));
  Comment comment = CommentService.getInstance().selectCommentByPK(commentNo);
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
<h2>댓글 수정</h2>

<form method="post" action="viewComment.jsp">
  <input type="hidden" name="commentNo" value="<%= comment.getCommentNo() %>">
  작성자: <input type="text" name="userId" value="<%= comment.getUserId() %>" readonly><br><br>
  내용:<br>
  <textarea name="commentContent" rows="5" cols="40"><%= comment.getCommentContent() %></textarea><br><br>
  <input type="submit" value="수정하기">
  <input type="button" value="취소" onclick="location.href='listComment.jsp'">
</form>

</body>
</html>