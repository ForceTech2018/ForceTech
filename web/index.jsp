<%@ page import="java.util.Date" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="CSS/Index.css"/>
    <title>Welcome</title>
    <meta charset="UTF-8">
    <meta name="description" content="Prima pagina">
    <meta name="keywords" content="forcetech, sport, welcome">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
      var errorLogin = '${verif}';
    </script>
    <script src="JS/index.js"></script> //am declarat variabila errorLogin inainte de a deschide fisierul, deci va fi vizibila in fisierul index.js
  </head>
  <body>
    <%Date data=new Date();
      out.println("<h2>"+data+"</h2>");%>
    <img id="logo" src="IMG/logo.png" alt="logo">
    <hr>
    <p>
      Join us in a 360 degrees transformation!
    </p>

    <button onclick="location.href = 'login.jsp';">Login</button>
    <button onclick="location.href = 'register.jsp';">Sign In</button>
    <button onclick="location.href = 'profile.jsp';">Profil</button>
    <form action="/logout" method="post">
      <input id="submit" type="submit" value="Logout"/>
    </form>
    <br>
    <div class="container">
      <img class="mySlides" src="IMG/slideshow1.jpg" style="width:100%">
      <img class="mySlides" src="IMG/slideshow2.jpg" style="width:100%">
      <img class="mySlides" src="IMG/slideshow3.jpg" style="width:100%">

      <button class="leftbutton" onclick="plusDivs(-1)">&#10094;</button>
      <button class="rightbutton" onclick="plusDivs(1)">&#10095;</button>
    </div>

  </body>
</html>
