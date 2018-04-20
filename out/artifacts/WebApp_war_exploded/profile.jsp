<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/profil.css"/>
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
    <div id="title">
        <img id="logo" src="IMG/banner_ft1.jpg" alt="logo"/>
    </div>
    <div id="container">
        <div id="security">
            <h1 id="h1securitate">Securitate</h1>
            <img id="avatarimg" alt="avatar" width="200px" height="220px" />
            <form action="/securityprofile" method="post" id="secform">
                <label><p>AvatarURL (max 200):</p>
                    <input type="text" maxlength="200" name="avatar">
                </label>
                <label><p>Nume (max 20):</p>
                    <input type="text" maxlength="20" name="firstname">
                </label>
                <label><p>Prenume (max 20):</p>
                    <input type="text" maxlength="20" name="lastname">
                </label>
                <label><p>Old Password (max 20):</p>
                    <input type="password" maxlength="20" name="oldpassword">
                </label>
                <label><p>New Password (max 20):</p>
                    <input type="password" maxlength="20" name="newpassword">
                </label>
                <label><p>Repeat New Password</p>
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
            <h1 id="h1personal">Date personale</h1>
            <form action="/personalprofile" method="post" id="persform">
                <p id="textsexlabel">Sex:</p>
                <label class="sexlabel">
                    <p>M</p> <input type="radio" name="sex" value="masculin" checked="checked">
                </label>
                <label class="sexlabel">
                    <p>F</p> <input type="radio" name="sex" value="feminin">
                </label>
                <label><p>Varsta (ex: 20):</p>
                    <input type="number" min="0" max="120" name="varsta">
                </label>
                <label><p>Inaltime (ex: 1.83):</p>
                    <input type="number" min="0" max="3" step="0.01" name="inaltime">
                </label>
                <label><p>Greutate (ex: 70.08):</p>
                    <input type="number" min="0" max="500" step="0.01" name="greutate">
                </label>
                <label>
                    <p>Nivel activitate actuala:</p>
                    <select id="nivact" name="nivelact">
                        <option value="deloc">Deloc</option>
                        <option value="mediocru">Mediocru</option>
                        <option value="normal" selected>Normal</option>
                        <option value="sportiv">Sportiv</option>
                    </select>
                </label>
                <label class="tipactlabel">
                    <p>Tip activitate preferat (alegere multipla):</p>
                </label>
                <label class="tipactlabel">
                    <p>Alergat</p> <input type="checkbox" name="tipact" value="alergat">
                </label>
                <label class="tipactlabel">
                    <p>Static (ex: fintess)</p> <input type="checkbox" name="tipact" value="static">
                </label>
                <label class="tipactlabel">
                    <p>Workout</p> <input type="checkbox" name="tipact" value="workout">
                </label>
                <label class="tipactlabel">
                    <p>Diferite sporturi</p> <input type="checkbox" name="tipact" value="sports">
                </label>
                    <textarea rows="5" cols="60" name="feedback">Asteptari: </textarea>
                <input type="submit" value="Salveaza" id="perssubmit"/>
            </form>
        </div>
    </div>
</body>
</html>
