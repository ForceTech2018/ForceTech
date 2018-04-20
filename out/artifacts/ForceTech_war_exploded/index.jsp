<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%Date data=new Date();
      out.println("<h2>"+data+"</h2>");%>

    <button onclick="location.href = 'login.jsp';">Login</button>
    <button onclick="location.href = 'register.jsp';">SingIn</button>
  </body>
</html>
