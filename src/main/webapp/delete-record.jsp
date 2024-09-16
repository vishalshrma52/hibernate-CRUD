<%@page import="com.cetpa.*"%>
<%
int bid=Integer.parseInt(request.getParameter("bookid"));
Book book=BookDao.getBook(bid);
if(book!=null)
{
	BookDao.deleteBook(book);
	%>
	<%@ include file="menu.jsp" %>
	<div>
 		<h3 style='color:green'>Book with id <%=bid%> has been deleted</h3>
	</div>
	<%
	return;
}
%>
<jsp:include page="delete-book.jsp"/>
<div>
 <h3 style='color:red'>Book with id <%=bid%> does not exist</h3>
</div>
