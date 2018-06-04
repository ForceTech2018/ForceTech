//noinspection JSAnnotator
window.onload = function(){


    //if(errorLogin) alert(errorLogin); //daca errorLogin != NULL

    var butonLogout = document.getElementById("submit");
    var butonProfil = document.getElementById("profile");
    var butonStart = document.getElementById("start");
    var container = document.getElementById("container");
    var userdata = document.getElementById("userdata");
    var miniavatar = document.getElementById("miniavatar");
    var stats = document.getElementById("stats");

    if(errorLogin==1){
        var welcome = document.createElement("p");
        welcome.innerText = "Buna, " + nume + "!";
        var firstElement = document.getElementsByClassName("p1")[0];
        firstElement.parentNode.insertBefore(welcome, firstElement);
        butonLogout.style.display = "block";
        butonProfil.style.display = "block";
        butonStart.style.display = "block";
        miniavatar.src = avatar;
        miniavatar.style.display = "block";
        stats.style.display = "block";
        stats.innerHTML = "Medalii: "+medalii;
    }
    else{
        var butonLogin = document.createElement("BUTTON");
        butonLogin.className="userdata";
        butonLogin.id="login";
        butonLogin.onclick=loginclick;
        butonLogin.innerHTML="Login";
        butonLogin.style.display="block";
        userdata.appendChild(butonLogin);

        var butonRegister = document.createElement("BUTTON");
        butonRegister.className = "userdata";
        butonRegister.id = "register";
        butonRegister.onclick=registerclick;
        butonRegister.innerHTML="Register";
        butonRegister.style.display="block";
        userdata.appendChild(butonRegister);

   }

};

function loginclick(){

    var form = document.getElementById("loginform");
    var stil = window.getComputedStyle(form);
    if(stil.display === "none") form.style.display="block";
    else form.style.display="none";
    var text = document.getElementById("text");
    text.style.mixBlendMode = "exclusion";
}
function registerclick(){

    var form = document.getElementById("registerform");
    var stil = window.getComputedStyle(form);
    if(stil.display === "none") form.style.display="block";
    else form.style.display="none";
    var text = document.getElementById("text");
    text.style.mixBlendMode = "exclusion";
}