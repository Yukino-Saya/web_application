<%--
  Created by IntelliJ IDEA.
  User: chenh
  Date: 2026/3/30
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <center>
       <from action="" method="post">
           <table>
               <tr>
                   <td>user</td>
                   <td><input type="text" name="user"></td>
               </tr>
               <tr>
                   <td>password</td>
                   <td><input type="password" name="pwd"></td>
               </tr>
               <tr>
                   <td>验证码</td>
                   <td><input type="text" name="confire"></td>
                   <td><jsp:include page="random.jsp"></jsp:include></td>
               </tr>
               <tr align="center">
                   <td><input type="submit" value="提交"></td>
                   <td><input type="reset" value="重置"></td>
               </tr>
           </table>
       </from>
   </center>
</body>
</html>
