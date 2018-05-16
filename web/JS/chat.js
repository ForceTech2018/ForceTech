
window.onload = function(){
    document.getElementById("miniavatar").src = avatar;
    //document.getElementById("messagesWrite").value=nume+prenume;
    var nume;
    do{
        nume = window.prompt("Choose your nickname: ","User");
    }while(nume === null);
    document.getElementById("messagesWrite").value=nume;
    setTimeout(function(){sendMessage();},500);
}

var websocket = new WebSocket("ws://localhost:8080/chatserver");

websocket.onmessage = function processMessage(message) {
    if(message.data !== "invalid"){
        var str = message.data;
        var strv = str.split(' ');
        if(strv.length === 1){
            var useri = strv[0].split(',');
            document.getElementById("usersChat").innerHTML = null;
            for(var i=0; i<useri.length-1;i++)
            {
                var paragraf = document.createElement("P");
                paragraf.className = "mesajeUsers";
                paragraf.innerHTML = useri[i] + "<br>";
                document.getElementById("usersChat").appendChild(paragraf);
            }
        }
        else{
            var chat = document.getElementById("messagesChat");
            var paragraf = document.createElement("P");
            paragraf.className = "mesaje";
            paragraf.innerHTML = message.data + "<br>";
            chat.appendChild(paragraf);
        }
    }
    else{
        alert("Nickname-ul deja exista!");
        location.reload();
    }
}

function sendMessage() {
    var message = document.getElementById("messagesWrite");
    message.value = message.value.replace(/\s+/g, '');
    websocket.send(message.value);
    message.value = "";
}

function sendEnter() {
    if(window.onkeydown === null)
        window.onkeydown = function(e){ if(e.keyCode === 13) sendMessage(); }
    else window.onkeydown = null;
}