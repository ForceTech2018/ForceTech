<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    <link rel="shortcut icon" type="image/png" href="/IMG/favicon.png"/>
    <title>Welcome</title>
    <meta charset="UTF-8">
    <meta name="description" content="Prima pagina">
    <meta name="keywords" content="forcetech, sport, welcome">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
      var errorLogin = '${verif}';
      var nume = '${numeuser}';
      var avatar = '${avatar}';
    </script>
    <script src="JS/index.js"></script>
    <!--//am declarat variabila errorLogin inainte de a deschide fisierul, deci va fi vizibila in fisierul index.js-->
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
        <p class="p1" id="motto"> Join us in a 360 degrees transformation! </p>
        <br>
        <button id="start" onclick="location.href = 'home.jsp';">Start</button>
        <section id="introducere">
          <h1>Cine este ForceTech?</h1>
          <div id="text">
              <p> ForceTech suntem noi.</p>
              Cei pe care ne bucura miscarea. Ne bucura si rezultatele ei, nu te vom minti...
            Ne bucura sa facem miscare impreuna. Informaticienii Forcetech au implementat aceasta aplicatie in 2018,
            in sprijinul tuturor celor care au nevoie de o sugestie, de o motivatie si, mai ales, de un prieten, pentru a
            indeplini cele 30 de minute de sport zilnic.
            <br>
            Inscrie-te acum si alatura-te comunitatii ForceTech!
          </div>
        </section>

        <div id="loginform">
            <form action="/logare" method="post">
                <label id="namelabel">Name: <input type="text" name="name" width="30"/></label>
                <br>
                <label id="passlabel">Pass: <input type="password" name="pass" width="10"/></label>
                <br>
                <input type="submit" value="Login" id="submitlogin"/>
            </form>
        </div>
    </div>
  </body>
</html>
