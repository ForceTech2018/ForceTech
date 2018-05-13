<%--
  Created by IntelliJ IDEA.
  User: CristyBv
  Date: 08-May-18
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home - ForceTech</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/home.css"/>
    <link rel="shortcut icon" type="image/png" href="/IMG/favicon.png"/>
    <meta charset="UTF-8">
    <meta name="description" content="Pagina de home">
    <meta name="keywords" content="forcetech, sport, welcome, home">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        var avatar = '${avatar}';
    </script>
    <script src="JS/home.js"></script>
</head>
<body>
<div id="blur"></div>
<div id="header">
    <img id="logo" src="IMG/banner.png" alt="logo">
    <div id="bara"></div>
    <div id="userdata">
        <form action="/logout" method="post" id="formsubmit">
            <input class = "userdata" id="submit" type="submit" value="Logout"/>
        </form>
        <img id="miniavatar"/>
        <button class="userdata" id="profile" onclick="location.href = 'profile.jsp';">Profil</button>
    </div>
</div>
<div class="container">

</div>

</body>
</html>
