<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script>
      var errorLogin = '${errorlogin}';
    </script>
    <script src="JS/index.js"></script>
  </head>
  <body>
    <%Date data=new Date();
      out.println("<h2>"+data+"</h2>");%>
    <button onclick="location.href = 'login.jsp';">Login</button>
    <button onclick="location.href = 'register.jsp';">SingIn</button>
    <button onclick="location.href = 'profile.jsp';">Profil</button>
    <form action="/logout" method="post">
      <input type="submit" value="Logout"/>
    </form>
  </body>
</html>
