<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>随机数字</title>
</head>
<body>
    <h3>随机4个数字</h3>
    <%
        for (int i = 0; i < 4; i++) {
            int num = (int)(Math.random() * 100);
            out.println(num + " ");
        }
    %>
</body>
</html>
