<%--
  Created by IntelliJ IDEA.
  User: CristyBv
  Date: 14-May-18
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact - ForceTech</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/contact.css"/>
    <link rel="shortcut icon" type="image/png" href="/IMG/favicon.png"/>
    <meta charset="UTF-8">
    <meta name="description" content="Pagina de home">
    <meta name="keywords" content="forcetech, sport, welcome, home">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        var avatar = '${avatar}';
        var medalii = '${medalii}';
    </script>
    <script src="JS/contact.js"></script>
</head>
<body>
<div id="blur"></div>
<div id="header">
    <img id="logo" src="IMG/banner.png" alt="logo" onclick="location.href = 'index.jsp';"/>
    <div id="bara"></div>
    <div id="userdata">
        <form action="/logout" method="post" id="formsubmit">
            <input class = "userdata" id="submit" type="submit" value="Logout"/>
        </form>
        <img id="miniavatar" src=""/>
        <button class="userdata" id="profile" onclick="location.href = 'profile.jsp';">Profil</button>
        <div id="stats" onclick="location.href = 'clasament.jsp'"></div>
    </div>
</div>
<div id="meniu">
    <nav>
        <ul>
            <li id="first">
                <a href="home.jsp">Home</a>
            </li>
            <li>
                <a href="chat.jsp">Chat</a>
            </li>
            <li id="lisubmenu">
                <div>Exercitii</div>
                <ul id="submenu">
                    <li>
                        <a href="exercitii1.jsp">Exercitii1</a>
                    </li>
                    <li>
                        <a href="exercitii2.jsp">Exercitii2</a>
                    </li>
                    <li>
                        <a href="exercitii3.jsp">Exercitii3</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="contact.jsp" class="current">Contact</a>
            </li>
        </ul>
    </nav>
</div>
<div class="container">

</div>
</body>
</html>
