<%@page import="com.cetpa.*"%>
<%
int bid=Integer.parseInt(request.getParameter("bookid"));
Book book=BookDao.getBook(bid);
if(book!=null)
{
	%>
	<%@ include file="menu.jsp" %>
	<table border='1' style='width:40%;border-collapse:collapse;'>
	 <tr>
	  <th align="left">Book Id</th>
	  <td><%=book.getBookid()%></td>
	 </tr>
	 <tr>
	  <th align="left">Book title</th>
	  <td><%=book.getTitle()%></td>
	 </tr>
	 <tr>
	  <th align="left">Book author</th>
	  <td><%=book.getAuthor()%></td>
	 </tr>
	 <tr>
	  <th align="left">Total copies</th>
	  <td><%=book.getCopies()%></td>
	 </tr>
	 <tr>
	  <th align="left">Book price</th>
	  <td><%=book.getPrice()%></td>
	 </tr>
	</table>
	<%
	return;

}
%>
<jsp:include page="get-book.jsp"/>
<div>
 <h3 style='color:red'>Book with id <%=bid%> not found</h3>
</div>
