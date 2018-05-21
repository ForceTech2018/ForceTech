<%--
  Created by IntelliJ IDEA.
  User: Ioana
  Date: 25.03.2018
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pagina 2 de exercitii</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/YogaCSS.css"/>
    <link rel="shortcut icon" type="image/png" href="IMG/favicon.png"/>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga">
    <meta name="keywords" content="forcetech, sport, yoga, fit, active">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        var avatar = '${avatar}';
        var nume = '${numeuser}';
        var medalii = '${medalii}';
    </script>
    <script src="JS/YogaJS.js"></script>
</head>
<body>

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
                <a href="contact.jsp">Contact</a>
            </li>
        </ul>
    </nav>
</div>

<div id="box">
    <div id="f1" class="divs">
        <h2>Why practicing Yoga?</h2>
            Practicing Yoga will help you:

               <p class="listamica">improve and maintain the health of muscles and organs</p>
               <p class="listamica">keep your mind healthy</p>
               <p class="listamica">get a better night’s sleep</p>
               <p class="listamica">improve performance and prevent injuries in sports</p>
               <p class="listamica">speed recovery from training</p>
               <p class="listamica">prevent conditions such as diabetes, heart disease and auto-immune disorders</p>
               <p class="listamica">slow down the negative effects of an office job</p>
               <p class="listamica">increase your sense of happiness and well being</p>

    </div>

    <div id="f2" class="divs">
        <h2>Start your Yoga journey!</h2>
        <p>Yoga is not a good cardio workout, so it is generally not an effective way to lose weight. However,
        it is a whole body workout that can make you work very hard, sweat and, in some cases, exhaust yourself. Its strength is in toning
        the body through challenging physical exercise and improving overall health through increased flexibility, body awareness and relaxation.
        </p>
       <p> The gesture Namaste represents the belief that there is a Divine spark within each of us that is located in the heart chakra.
           The gesture is an acknowledgment of the soul in one by the soul in another.</p>
        <p>
        Yoga may help reverse heart disease. Well, when combined with aerobic exercise and a low-fat plant-based diet. The author of one study said, “Adherence to the yoga and meditation program was as strongly correlated with the changes in the amount of blockage [in the arteries] as was the adherence to diet.”
        Yoga may help to control inflammation throughout the body as well.
        Yoga has long been used for relieving stress and improving mood. Plus, since some people overeat due to stress, conquering stress
        with yoga might indirectly improve nutrition.
        </p>
        <p>
        If you pick an online class, don’t get stuck in reading too many class descriptions. The nature of the mind is to look for the perfect class
        to solve everything. That class doesn’t exist; you have to make it yourself.</p>
    </div>
    <div id="f3" class="divs">
        <label class="check"><input type="checkbox"></label>
       <h2>Yoga for Chronic Stress, Anxiety and Depression</h2>
        This beginner yoga program works with a variety of yoga techniques to help you feel, understand and let go of your chronic stress,
        anxiety and/or depression. It works with pranayama to wake you up, relaxation and meditation to shift your mental energy and a series of
        carefully-chosen yoga classes that help you learn to stretch and release the deeply-held tension in your body. David, our founder, will also
        be there with short, weekly videos to help you understand how to let go of stress,
        anxiety and depression. Please note that it would be best to do this program with the guidance of a health professional.
    </div>
    <div id="f4" class="divs">
        <label class="check"><input type="checkbox"></label>
        <h2>Establish Your Core Stability and Strength</h2>
        Learning how to engage and strengthen your core helps you in all aspects of life, not only yoga. If you dedicate time to this,
        it will help you find an inner power that will support you in all things that you do in life.
        It will also help you feel a lightness in your body and a healthy length in your spine.
    </div>

    <div id="quote">
        Yoga is not about touching your toes, it is what you learn on the way down. -JIGAR GOR
    </div>
    

    <img class="images" id="im1" src="IMG/Exercises - pictures/Yoga/yoga1.jpg" alt="Yoga exercise"/>
    <img class="images" id="im2" src="IMG/Exercises - pictures/Yoga/yoga2.jpg" alt="Yoga exercise"/>

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
