<%@ page language="java" contentType="text/html; charset=utf-8" 
   pageEncoding="UTF-8"%>
 <%@ page import ='mybatis.guest.service.*' %>
   
<%
   long commentNo = Long.parseLong(request.getParameter("cId"));
   CommentService.getInstance().deleteComment(commentNo);
   
   response.sendRedirect("listComment.jsp");
%>   