<%--
  Created by IntelliJ IDEA.
  User: Ioana
  Date: 25.03.2018
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pagina 3 de exercitii</title>
</head>
<body>
<%
    request.setAttribute("page","exercitii1");
    if(request.getAttribute("go")!="1") request.getRequestDispatcher("/interceptor").forward(request,response);
%>
</body>
</html>