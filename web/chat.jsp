
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chat - ForceTech</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/chat.css"/>
    <link rel="shortcut icon" type="image/png" href="IMG/favicon.png"/>
    <meta charset="UTF-8">
    <meta name="description" content="Pagina de home">
    <meta name="keywords" content="forcetech, sport, welcome, home">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        var avatar = '${avatar}';
        var nume = '${nume}';
        var prenume = '${prenume}';
    </script>
    <script src="JS/chat.js"></script>
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
<div id="meniu">
    <nav>
        <ul>
            <li id="first">
                <a href="home.jsp">Home</a>
            </li>
            <li>
                <a href="chat.jsp" class="current">Chat</a>
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
                <a href="contact.jsp">Contact</a>
            </li>
        </ul>
    </nav>
</div>
<div class="container">
    <label id="fereastra">
        <p id="p1">ForceTech</p>
        <p id="p2">CHAT</p>
        <div id="messagesChat"></div>
        <div id="usersChat"></div>
        <label id="inputs">
            <textarea id="messagesWrite" onfocus="sendEnter();" onblur="sendEnter();"> </textarea>
            <input type="button" id="send" value="Send" onclick="sendMessage()"/>
        </label>
    </label>
</div>
<footer>Echipa ForceTech ® All rights reserved!</footer>

</body>
</html>
