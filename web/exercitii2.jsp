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
    </script>
    <script src="JS/YogaJS.js"></script>
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

           <ul id="listBenefits">
               <li>improve and maintain the health of muscles and organs</li>
               <li>keep your mind healthy</li>
               <li>get a better night’s sleep</li>
               <li>improve performance and prevent injuries in sports</li>
               <li>speed recovery from training</li>
               <li>prevent conditions such as diabetes, heart disease and auto-immune disorders</li>
               <li>slow down the negative effects of an office job</li>
               <li>increase your sense of happiness and well being</li>
           </ul>
    </div>

    <div id="f2" class="divs">
        <h2>Start your Yoga journey!</h2>
            Yoga is not a good cardio workout, so it is generally not an effective way to lose weight. However,
            it is a whole body workout that can make you work very hard, sweat and, in some cases, exhaust yourself. Its strength is in toning
            the body through challenging physical exercise and improving overall health through increased flexibility, body awareness and relaxation.

        The gesture Namaste represents the belief that there is a Divine spark within each of us that is located in the heart chakra.
        The gesture is an acknowledgment of the soul in one by the soul in another.
            Accessories or even a yoga mat are by no means a prerequisite to practise...Just be creative!

        Yoga may help reverse heart disease. Well, when combined with aerobic exercise and a low-fat plant-based diet. The author of one study said, “Adherence to the yoga and meditation program was as strongly correlated with the changes in the amount of blockage [in the arteries] as was the adherence to diet.”
        Yoga may help to control inflammation throughout the body as well.
        Yoga has long been used for relieving stress and improving mood. Plus, since some people overeat due to stress, conquering stress
        with yoga might indirectly improve nutrition.
        If you pick an online class, don’t get stuck in reading too many class descriptions. The nature of the mind is to look for the perfect class
            to solve everything. That class doesn’t exist; you have to make it yourself.
    </div>
</div>
</body>
</html>
