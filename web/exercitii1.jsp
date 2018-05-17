<%--
  Created by IntelliJ IDEA.
  User: Ioana
  Date: 25.03.2018
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ForceTech - Fitness</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/Fitness.css"/>
    <link rel="shortcut icon" type="image/png" href="IMG/favicon.png"/>
    <meta charset="UTF-8">
    <meta name="description" content="Fitness">
    <meta name="keywords" content="forcetech, sport, fitness">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        var avatar = '${avatar}';
        var nume = '${numeuser}';
    </script>
    <script src="JS/Design_exercitii.js"></script>
</head>
<body>
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
                <a href="chat.jsp">Chat</a>
            </li>
            <li id="lisubmenu">
                <div  class="current">Exercitii</div>
                <ul id="submenu">
                    <li>
                        <a href="exercitii1.jsp" class="current">Exercitii1</a>
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

    <p>To get fit</p>
    <div class="togetfit" id="div1">
        <input class="checkbox" type="checkbox" >
        <div class="pozaexercitiu">
            <img class="togetfit1" src="IMG/Exercises - pictures/GetFit/Superman-Exercise.jpg" alt="Superman Exercise"/>
        </div>
        <br>
        <div class="descriere1">
            <b> Superman exercise:</b> After the W lifts turn around and face the ground.
            Stretch yourself on the ground by keeping your hands and legs straight.
            You need to lift your chest and thighs of the ground at the same time by balancing yourself on the tummy.
            While doing this try to keep yourself as straight as possible. Repeat lifting your thighs and chest off the ground for 30 seconds.
            This exercise is extremely effective to tone your belly.
        </div>
        <br>
    </div>
    <div class="togetfit" id="div2">
        <input class="checkbox" type="checkbox">
        <div class="pozaexercitiu">
            <img class="togetfit1" src="IMG/Exercises - pictures/GetFit/Push-up-and-Knee-Kick-Exercise.jpg" alt="Push-up-and-Knee-Kick-Exercise"/>
        </div>
        <div class="descriere1">
            <b> Push up and knee kick:</b> 	 This exercise will work your whole body and is great to lose arm fat, especially for upper arm fat removal.
            Men are recommended to do a proper push-up.
            Women can begin with knee push-ups.
            You need to lie down flat on the ground.
            Come up to your hands and feet.
            This is your starting position.
            You will do just one push up and come back to your starting position.
            After this you will need to bring your right knee forward to touch your right elbow, and then you will bring your left knee to your left elbow.
            This is the complete exercise; you need to do this for 30 seconds.
            Begin with a push-up, go for the knee kicks and then do a push up again.
            This will build strength in your arms and core.
        </div>
    </div>
<div id="mesaj">
    <p> Antreneaza-te cu cei mai buni! Incearca unul dintre videoclipurile recomandate!</p>
</div>
<div class="divvideo">
<a class="video" target="_blank" href="https://www.youtube.com/watch?v=JWy2-Dz7vJo">
    <div class="tooltip">
        <img alt="Tutorial Youtube" src="/IMG/Exercises - pictures/GetFit/video1.PNG">
        <span class="tooltiptext">20 Minute HIIT Workout with Warm Up and Cool Down </span>
    </div>
</a>
</div>
<div id="video2">
    <a class="video" target="_blank" href="https://www.youtube.com/watch?v=MrV4vCotio0">
        <div class="tooltip">
            <img alt="Tutorial Youtube" src="/IMG/Exercises - pictures/GetFit/video2.PNG">
            <span class="tooltiptext">10 Minute Abs Workout - Fitness Blender Abs and Obliques Routine </span>
        </div>

    </a>
</div>
<footer>
    <div>
        <p class="Contact"> ForceTech ® All rights reserved. Find us here!</p>
        <img id="facebook" src="/IMG/fbcontact.png" alt="facebook">
        <img id="twitter" src="/IMG/twittercontact.png" alt="twitter">
    </div>
</footer>
</body>
</html>
