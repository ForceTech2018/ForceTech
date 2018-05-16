package com.chat;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.*;

@ServerEndpoint("/chatserver")
public class ChatServer {
    private static Set<Session> chatUsers = Collections.synchronizedSet(new HashSet<Session>());

    @OnOpen
    public void handleOpen(Session userSession) throws IOException {
        chatUsers.add(userSession);
    }

    @OnMessage
    public void handleMessage(String message, Session userSession) throws IOException {
        String username = (String) userSession.getUserProperties().get("username");
        if(username == null){
            userSession.getUserProperties().put("username",message);
            int ok=2;
            for (Session session : chatUsers) {
                if(session.getUserProperties().get("username").equals(message)) ok--;
            }
            if(ok == 1){
                userSession.getBasicRemote().sendText("You are now connected as "+message);

                Iterator<Session> iterator = chatUsers.iterator();
                StringBuilder str = new StringBuilder();
                while(iterator.hasNext()){
                    Session session = iterator.next();
                    str.append(session.getUserProperties().get("username")).append(",");
                }
                iterator = chatUsers.iterator();
                while(iterator.hasNext()){
                    Session session = iterator.next();
                    session.getBasicRemote().sendText(str.toString());
                }
            }

            else{
                userSession.getBasicRemote().sendText("invalid");
                chatUsers.remove(userSession);
            }

        }
        else{
            for (Session chatUser : chatUsers) {
                chatUser.getBasicRemote().sendText(username + " : " + message);
            }
        }
    }

    @OnClose
    public void handleClose(Session userSession) throws IOException {
        chatUsers.remove(userSession);

        Iterator<Session> iterator = chatUsers.iterator();
        StringBuilder str = new StringBuilder();
        while(iterator.hasNext()){
            Session session = iterator.next();
            str.append(session.getUserProperties().get("username")).append(",");
        }
        iterator = chatUsers.iterator();
        while(iterator.hasNext()){
            Session session = iterator.next();
            session.getBasicRemote().sendText(str.toString());
        }
    }
}
