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
    <link rel="shortcut icon" type="image/png" href="IMG/favicon.png"/>
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
<div id="meniu">
    <nav>
        <ul>
            <li id="first">
                <a href="home.jsp" class="current">Home</a>
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
<div class="container">
    <h1 id="welcome">
        Bine ai venit ! Îti multumim ca esti aici si ai incredere in noi ! Acum haide sa trecem la treaba !
    </h1>
    <p>
        Dacă nu ai apucat să te antrenezi astăzi, ține minte că nu este niciodată prea târziu, așa că te sfătuim să începi să o faci.
        Ai o multitudine de exerciții din care poți<br> alege ceea ce iți dorești să faci astăzi.
        De asemenea, poți încerca să urmezi un program special gândit pentru nevoile tale, care iți va oferi rezultate garantate.<br>
    </p>
    <p>
        Mai departe îți oferim câteva <b>sfaturi nutriționale</b> importante pentru a obține performanțele dorite:
        <ol>
            <li><b>1. Verifică-ți deficitul caloric</b></li>
                <br>
                <div>
                    Primul pas către o dietă de succes este stabilirea numărului de calorii pe care vrei să le ai în deficit la sfârșitul zilei.
                    Un mod foarte ușor de a-ți da seama<br> de acest număr este folosirea unui calculator <a href="https://tdeecalculator.net/" target="_blank">TDEE</a>.
                    Aceste calculatoare TDEE (Total Daily Energy Expenditure) stabilesc în funcție de greutatea corporală,<br> vârstă, înălțime și gradul
                    de activitate numărul de calorii pe care le arzi într-o zi normală.
                </div>
            <li><b>2. Hidratează-te</b></li>
                <br>
                <div> Este un sfat de care trebuie să ții cont întotdeauna, indiferent de țelul antrenamentului tău!
                    Deshidratarea este foarte periculoasă, diminuându-ți viteza,<br> puterea de concentrare și încetinindu-ți metabolismul.
                    Acesta este un lucru pe care vrem să-l evităm cu orice cost.
                    Este recomandat să bei cel puțin 2 litri de apă<br> în fiecare zi.
                </div>
            <li><b>3. Consumă carbohidrații când trebuie</b></li>
                <br>
                <div>
                    Carbohidrații trebuie luați cu ceva timp înaintea unui antrenament, asigurându-te astfel
                    că acești carbohidrați sunt consumați și nu se depun sub formă de<br> grăsime. Dacă ai un antrenament mai ușor,
                    vei consuma mai puțini carbohidrați, iar dacă vei avea unul foarte intens, vei lua mai mulți.
                </div>
            <li><b>4. Consumă mai multe fructe și legume</b></li>
                <br>
                <div>
                    Fructele și legumele sunt baza unei alimentații sănătoase. Ele sunt sărace în calorii și nutrienți,
                    ceea ce înseamnă că sunt bogate în vitamine, minerale,<br> antioxidanți și fibre.
                    Incercați să consumați un curcubeu de legume și fructe la fiecare masă a zilei.
                </div>
        </ol>
    </p>
    <p>
        Urmează aceste sfaturi și, alături de programele propuse de noi, îți garantăm că stilul tău de viață se va îmbunătăți
        radical!
    </p>
    <br>
    <p>
        Alte articole recomandate:
            <p><a href="https://www.sparkpeople.com/resource/nutrition_articles.asp?id=1074">1) Ce sa mancati inainte de un antrenament..</a></p>
            <p><a href="https://www.sparkpeople.com/resource/nutrition_articles.asp?id=1082">2) Ce sa mancati dupa un antrenament..</a></p>
            <p><a href="https://www.sparkpeople.com/blog/blog.asp?post=8_reasons_why_youre_not_losing_weight">3) 8 motive pentru care nu reusesti să slăbești</a> </p>
            <p><a href="https://www.sparkpeople.com/blog/blog.asp?post=the_top_100_running_songs_of_all_time">4) Cele mai bune melodii pentru antrenament</a></p>
    </p>
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
