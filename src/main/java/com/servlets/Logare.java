package com.servlets;

import com.users.UserData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Logare")
public class Logare extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Logare");
        String user=request.getParameter("name");
        String pass=request.getParameter("pass");

        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(15*60);
        session.setAttribute("user",user);

        UserData userData = new UserData(user,pass);
        try {
            userData.createConnection();
            if(userData.isValidUser("all")){
                String nowreg = userData.getValueOf("now_registered");
                int ok= Integer.parseInt(nowreg);
                Cookie c1=new Cookie("user",user);
                Cookie c2=new Cookie("pass",pass);
                Cookie c3;
                if(ok==1) { c3 = new Cookie("nowReg", "1"); }
                else { c3 = new Cookie("nowReg", "0"); }
                Cookie c4=new Cookie("avatar_url",userData.getValueOf("avatar_url"));
                Cookie c5=new Cookie("nume",userData.getValueOf("nume"));
                Cookie c6=new Cookie("prenume",userData.getValueOf("prenume"));
                Cookie c7=new Cookie("email",userData.getValueOf("email"));
                Cookie c8=new Cookie("sex",userData.getValueOf("sex"));
                Cookie c9=new Cookie("varsta",userData.getValueOf("varsta"));
                Cookie c10=new Cookie("inaltime",userData.getValueOf("inaltime"));
                Cookie c11=new Cookie("greutate",userData.getValueOf("greutate"));
                Cookie c12=new Cookie("nivelact",userData.getValueOf("nivel_act_actual"));
                Cookie c13=new Cookie("tipact",userData.getValueOf("tip_act"));
                Cookie c14=new Cookie("medalii",userData.getValueOf("nr_medalii"));
                c1.setMaxAge(-1); c2.setMaxAge(-1); c3.setMaxAge(-1); c4.setMaxAge(-1);
                c5.setMaxAge(-1); c6.setMaxAge(-1); c7.setMaxAge(-1); c8.setMaxAge(-1);
                c9.setMaxAge(-1); c10.setMaxAge(-1); c11.setMaxAge(-1); c12.setMaxAge(-1);
                c13.setMaxAge(-1); c14.setMaxAge(-1);
                response.addCookie(c1); response.addCookie(c2); response.addCookie(c3);
                response.addCookie(c4); response.addCookie(c5); response.addCookie(c6);
                response.addCookie(c7); response.addCookie(c8); response.addCookie(c9);
                response.addCookie(c10); response.addCookie(c11); response.addCookie(c12);
                response.addCookie(c13); response.addCookie(c14);

                session.setAttribute("feedback",userData.getValueOf("feedback"));

                if(ok==1) response.sendRedirect("/profile.jsp");
                else response.sendRedirect("/index.jsp");
            }
            else{
                request.setAttribute("errorlogin","Invalid name or pass");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
            userData.closeConnection();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/login.jsp");
    }
}
