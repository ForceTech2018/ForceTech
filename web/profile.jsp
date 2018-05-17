<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    <link rel="stylesheet" type="text/css" href="CSS/profile.css"/>
    <link rel="shortcut icon" type="image/png" href="IMG/favicon.png"/>
    <title>ForceTech - Profile</title>
    <meta charset="UTF-8">
    <meta name="description" content="Pagina de profil">
    <meta name="keywords" content="forcetech, profil, profile">
    <meta name="author" content="ForceTech">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        //content
        var avatar= '${avatar}';
        var nume= '${nume}';
        var prenume = '${prenume}';
        var email = '${email}';
        var sex = '${sex}';
        var varsta = '${varsta}';
        var inaltime = '${inaltime}';
        var greutate = '${greutate}';
        var nivelact = '${nivelact}';
        var tipact = '${tipact}';
        var feedback = '${feedback}';
        //errors
        var error= '${error}';
        var notsamepass = '${notsamepass}';
        var notoldpass = '${notoldpass}';
        var notcorrectoldpass = '${notcorrectoldpass}';
        //succes
        var succes= '${succes}';
    </script>
    <script src="JS/profile.js"></script>
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
        <div id="security">
            <h1 id="h1securitate">Security</h1>
            <img id="avatarimg" alt="avatar" width="180px" height="200px" />
            <form action="/securityprofile" method="post" id="secform">
                <label><p>Avatar URL (max 200):</p>
                    <input type="text" maxlength="200" name="avatar">
                </label>
                <label><p>First Name (max 20):</p>
                    <input type="text" maxlength="20" name="firstname">
                </label>
                <label><p>Last Name (max 20):</p>
                    <input type="text" maxlength="20" name="lastname">
                </label>
                <label><p>Old Password (max 20):</p>
                    <input type="password" maxlength="20" name="oldpassword">
                </label>
                <label><p>New Password (max 20):</p>
                    <input type="password" maxlength="20" name="newpassword">
                </label>
                <label><p>Retype New Password</p>
                    <input type="password" maxlength="20" name="rnewpassword">
                </label>
                <label><p>Email (max 50):</p>
                    <input type="text" maxlength="50" name="email">
                </label>
                <input type="submit" value="Salveaza" id="secsubmit"/>
            </form>
        </div>
        <div id="intermediar"></div>
        <div id="personal">
            <h1 id="h1personal">Personal Data</h1>
            <form action="/personalprofile" method="post" id="persform">
                <p id="textsexlabel">Sex:</p>
                <label class="sexlabel">
                    <p>M</p> <input type="radio" name="sex" value="masculin" checked="checked">
                </label>
                <label class="sexlabel">
                    <p>F</p> <input type="radio" name="sex" value="feminin">
                </label>
                <label><p>Age (ex: 20):</p>
                    <input type="number" min="0" max="120" name="varsta">
                </label>
                <label><p>Height (ex: 1.83):</p>
                    <input type="number" min="0" max="3" step="0.01" name="inaltime">
                </label>
                <label><p>Weight (ex: 70.08):</p>
                    <input type="number" min="0" max="500" step="0.01" name="greutate">
                </label>
                <label>
                    <p>Activity level:</p>
                    <select id="nivact" name="nivelact">
                        <option value="deloc">None</option>
                        <option value="mediocru">Little</option>
                        <option value="normal" selected>Normal</option>
                        <option value="sportiv">Active</option>
                    </select>
                </label>

                    <p id="tipact">Favourite activity (you may choose more):</p>
                <label class="tipactlabel">
                    <p>Running</p> <input type="checkbox" name="tipact" value="alergat">
                </label>
                <label class="tipactlabel">
                    <p>Indoor, static (ex: fitness)</p> <input type="checkbox" name="tipact" value="static">
                </label>
                <label class="tipactlabel">
                    <p>Workout</p> <input type="checkbox" name="tipact" value="workout">
                </label>
                <label class="tipactlabel">
                    <p>Outdoors</p> <input type="checkbox" name="tipact" value="sports">
                </label>
                    <textarea rows="5" cols="40" name="feedback">Expectations: </textarea>
                <input type="submit" value="Salveaza" id="perssubmit"/>
            </form>
        </div>
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
