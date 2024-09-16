<%@ include file="menu.jsp" %>
<%@page import="com.cetpa.*"%>
<%
String title=request.getParameter("title");
String author=request.getParameter("author");
int copies=Integer.parseInt(request.getParameter("copies"));
int price=Integer.parseInt(request.getParameter("price"));
Book book=new Book(title,author,copies,price);
BookDao.saveBook(book);
%>
<h3>Book has been saved...</h3>