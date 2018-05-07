//noinspection JSAnnotator
/**
 * Created by CristyBv on 01-Apr-18.
 */

window.onload = function(){

    //if(errorLogin) alert(errorLogin); //daca errorLogin != NULL

    var butonLogin = document.getElementById("login");
    var butonSignIn = document.getElementById("signin");
    var butonLogout = document.getElementById("submit");
    var butonProfil = document.getElementById("profile");
    var butonStart = document.getElementById("start");
    if(errorLogin==1){

        var welcome = document.createElement("p");
        welcome.innerText = "Buna, " + nume + "!";
        var firstElement = document.getElementsByClassName('p1')[0];
        document.body.insertBefore(welcome, firstElement);
        butonLogin.style.display="none";
        butonSignIn.style.display = "none";
        butonLogout.style.position="relative";
        butonLogout.style.float="right";
        butonProfil.style.position="relative";
        butonProfil.style.float="right";
        butonStart.style.position="relative";
        butonStart.style.left="46%";
        butonStart.style.height="100px";
        butonStart.style.width="120px";

    }
    else{
       butonLogout.style.display = "none";
       butonProfil.style.display = "none";
       butonLogin.style.position="relative";
       butonLogin.style.float="right";
       butonSignIn.style.position="relative";
       butonSignIn.style.float="right";
       butonStart.style.display="none";

   }


}