<%@ page import="java.util.Random" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>随机数字</title>
</head>
<body bgcolor="f0fff0">
    <% Random random=new Random();
      for(int i=0;i<4;i++)
      {
          int start= random.nextInt(10);
          out.print(" "+ start);
      }
      %>
</body>
</html>
