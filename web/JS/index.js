//noinspection JSAnnotator
/**
 * Created by CristyBv on 01-Apr-18.
 */

window.onload = function(){


    //if(errorLogin) alert(errorLogin); //daca errorLogin != NULL

    var butonLogout = document.getElementById("submit");
    var butonProfil = document.getElementById("profile");
    var butonStart = document.getElementById("start");
    var container = document.getElementById("container");
    var userdata = document.getElementById("userdata");
    var miniavatar = document.getElementById("miniavatar");
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
    }
    else{
        var butonLogin = document.createElement("BUTTON");
        butonLogin.className="userdata";
        butonLogin.id="login";
        butonLogin.onclick=loginclick;
        butonLogin.innerHTML="Login";
        butonLogin.style.display="block";
        userdata.appendChild(butonLogin);

   }

}

function loginclick(){

    var form = document.getElementById("loginform");
    var stil = window.getComputedStyle(form);
    if(stil.display === "none") form.style.display="block";
    else form.style.display="none";
}