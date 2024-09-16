<%@page import="com.cetpa.*"%>
<%
int bid=Integer.parseInt(request.getParameter("bookid"));
Book book=BookDao.getBook(bid);
if(book!=null)
{
	%>
	<%@ include file="menu.jsp" %>
	<form action="update-record.jsp" method="post">
	<table style='width:40%;border:2px solid silver' cellpadding='10px'>
	 <tr>
	  <th align="left">Book Id</th>
	  <td><%=book.getBookid()%>
	   <input type='hidden' name='t1' value='<%=book.getBookid()%>'>
	   </td>
	 </tr>
	 <tr>
	  <th align="left">Edit book title</th>
	  <td><input type='text' name='t2' value='<%=book.getTitle()%>'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit book author</th>
	  <td><input type='text' name='t3' value='<%=book.getAuthor()%>'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit total copies</th>
	  <td><input type='text' name='t4' value='<%=book.getCopies()%>'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit book price</th>
	  <td><input type='text' name='t5' value='<%=book.getPrice()%>'></td>
	 </tr>
	 <tr>
	  <td colspan="2" align="center">
	   <button>Update Record</button>
	  </td>
	 </tr>
	</table>
	</form>
	<%
	return;
}
%>
<jsp:include page="edit-book.jsp"/>
<div>
 <h3 style='color:red'>Book with id <%=bid%> not found</h3>
</div>










