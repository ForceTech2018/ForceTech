<%--
  Created by IntelliJ IDEA.
  User: CristyBv
  Date: 24-Mar-18
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Inregistrare</title>
</head>
<body>
<form action="/inregistrare" method="post">
    Name: <input type="text" name="name" width="30"/>
    Pass: <input type="password" name="pass" width="10"/>
    <input type="submit" value="Register"/>
</form>

<p>${errorregister}</p>
</body>
</html>
