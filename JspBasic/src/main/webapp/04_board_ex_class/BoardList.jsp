<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="board_ex.model.*, board_ex.service.*" %>
<%@ page import="java.util.List" %>

<%  //웹브라우저가 게시글 목록을 캐싱할 경우 새로운 글이 추가되더라도 새글이 목록에 안 보일 수 있기 때문에 설정
	response.setHeader("Pragma","No-cache");		// HTTP 1.0 version
	response.setHeader("Cache-Control","no-cache");	// HTTP 1.1 version
	response.setHeader("Cache-Control","no-store"); // 일부 파이어폭스 버스 관련
	response.setDateHeader("Expires", 1L);			// 현재 시간 이전으로 만료일을 지정함으로써 응답결과가 캐쉬되지 않도록 설정
%>

<%
// 전체 메세지 레코드 검색

ListArticleService service = ListArticleService.getInstance();
List <BoardVO> mList =  service.getArticleList();
 
%>

<HTML>
<head><title> 게시글 목록 </title>
</head>

<BODY>

	<h3> 게시판 목록 </h3>
	
	<table border="1" bordercolor="darkblue">
	<tr>
		<td> 글번호 </td>
		<td> 제 목 </td>
		<td> 작성자 </td>
		<td> 작성일 </td>
		<td> 조회수 </td>
	</tr>
	
	<% if( mList.isEmpty() ) { %>
		<tr><td colspan="5"> 등록된 게시물이 없습니다. </td></tr>
	<% } else { %>
	<!-- *************** -->
	<!--  여기에 목록 출력하기  -->
	<% for(BoardVO m : mList) {  %>
		<tr>	
		    <td> <%= m.getSeq() %> </td>
		    <td><a href='BoardView.jsp?seq=<%= m.getSeq() %>'><%= m.getTitle() %></a></td>
		    <td> <%= m.getWriter() %> </td>
		    <td> <%= m.getRegdate() %> </td>
		    <td> <%= m.getCnt() %> </td>
		</tr>
		<% }  %>
		
		<% }  %>
		<tr>
			<td colspan='3'> 
		
			</td>
		</tr>
	
		<tr>
			<td colspan="5">
				<a href="BoardInputForm.jsp">글쓰기</a>
				
			</td>
		</tr>
	</table>
</BODY>
</HTML>
