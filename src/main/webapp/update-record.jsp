<%@ include file="menu.jsp" %>
<%@page import="com.cetpa.*"%>
<%
int bid=Integer.parseInt(request.getParameter("t1"));
String title=request.getParameter("t2");
String auth=request.getParameter("t3");
int noc=Integer.parseInt(request.getParameter("t4"));
int price=Integer.parseInt(request.getParameter("t5"));
Book book=BookDao.getBook(bid);
BookDao.t.begin();
book.setTitle(title);
book.setAuthor(auth);
book.setCopies(noc);
book.setPrice(price);
BookDao.t.commit();
%>
<h3>Book record has been updated...</h3>