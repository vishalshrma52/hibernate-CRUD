<%@ include file="menu.jsp" %>
<html>
 <body>
  <form action="save-record.jsp" method="post">
   <table style='border:2px solid blue;font-size:1.8vw' cellpadding='10px'>
    <tr>
     <td>Enter title</td>
     <td><input type='text' name='title' required style='font-size:1.7vw'></td>
    </tr>
    <tr>
     <td>Enter author name</td>
     <td><input type='text' name='author' required style='font-size:1.7vw'></td>
    </tr>
    <tr>
     <td>Enter number of copies</td>
     <td><input type='text' name='copies' required style='font-size:1.7vw'></td>
    </tr>
    <tr>
     <td>Enter price</td>
     <td><input type='text' name='price' required style='font-size:1.7vw'></td>
    </tr>
    <tr>
     <td colspan="2">
       <button style='font-size:1.7vw'>Save Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>