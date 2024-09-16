<%@ include file="menu.jsp" %>
<html>
 <body>
  <form action="get-record.jsp" method="post">
   <table style='border:2px solid blue;font-size:1.8vw' cellpadding='10px'>
    <tr>
     <td>Enter book id</td>
     <td><input type='text' name='bookid' required style='font-size:1.7vw'></td>
     <td><button style='font-size:1.7vw'>Get Record</button></td>
    </tr>
   </table>
  </form>
 </body>
</html>